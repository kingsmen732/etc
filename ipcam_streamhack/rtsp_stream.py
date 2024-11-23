import socket
import ipaddress
import concurrent.futures
import argparse
from datetime import datetime
import cv2
import time
import csv
import os

def load_credentials_csv(csv_file):
    """
    Load username and password combinations from CSV file
    Expected format: username,password
    """
    credentials = []
    try:
        with open(csv_file, 'r') as f:
            csv_reader = csv.reader(f)
            # Skip header if exists
            if os.path.getsize(csv_file) > 0:
                header = next(csv_reader, None)
            
            for row in csv_reader:
                if len(row) >= 2:  # Ensure row has at least username and password
                    credentials.append((row[0].strip(), row[1].strip()))
        
        print(f"Loaded {len(credentials)} credential pairs from {csv_file}")
        return credentials
    except Exception as e:
        print(f"Error loading credentials from CSV: {str(e)}")
        return [('admin', 'admin')]  # Return default credentials if file load fails

def test_rtsp_stream(ip, username, password, port=554):
    """
    Test RTSP stream with simple URL format
    Returns tuple (success, url) if successful
    """
    rtsp_url = f"rtsp://{username}:{password}@{ip}"
    
    try:
        cap = cv2.VideoCapture(rtsp_url)
        time.sleep(1)  # Give it time to connect
        
        if cap.isOpened():
            ret, frame = cap.read()
            if ret:
                print(f"\n[+] Success! Working stream found:")
                print(f"    URL: {rtsp_url}")
                print(f"    Credentials: {username}:{password}")
                cap.release()
                return True, rtsp_url
        cap.release()
            
    except Exception as e:
        pass
    
    return False, None

def check_rtsp_port(ip, port=554, credentials=None, timeout=1):
    """
    Check if RTSP port is open and test credentials
    """
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(timeout)
        result = sock.connect_ex((str(ip), port))
        sock.close()
        
        if result == 0:
            print(f"\n[*] Found open RTSP port on {ip}")
            print(f"[*] Testing credentials...")
            
            working_streams = []
            for username, password in credentials:
                print(f"    Trying {username}:{password}", end='\r')
                success, url = test_rtsp_stream(str(ip), username, password)
                if success:
                    working_streams.append((str(ip), username, password, url))
            return working_streams if working_streams else [(str(ip), None, None, None)]
        return None
    except Exception as e:
        print(f"Error checking {ip}: {str(e)}")
        return None

def scan_network(network_cidr, port=554, credentials=None, max_workers=50):
    """
    Scan a network range for open RTSP streams
    """
    try:
        network = ipaddress.ip_network(network_cidr)
        
        print(f"\nStarting RTSP scan at {datetime.now()}")
        print(f"Scanning network: {network_cidr}")
        print(f"Port: {port}")
        print(f"Testing {len(credentials)} credential combinations per host")
        print("-" * 60)
        
        working_streams = []
        
        with concurrent.futures.ThreadPoolExecutor(max_workers=max_workers) as executor:
            future_to_ip = {
                executor.submit(check_rtsp_port, ip, port, credentials): ip 
                for ip in network.hosts()
            }
            
            for future in concurrent.futures.as_completed(future_to_ip):
                result = future.result()
                if result:
                    working_streams.extend(result)
        
        print("\n" + "-" * 60)
        print(f"Scan completed at {datetime.now()}")
        print(f"Found {len(working_streams)} hosts with open RTSP ports")
        print(f"Found {len([h for h in working_streams if h[1] and h[2]])} working streams")
        
        # Save results to file
        if working_streams:
            output_file = "working_streams.txt"
            print(f"\nSaving results to {output_file}")
            with open(output_file, 'w') as f:
                f.write("Working RTSP Streams:\n\n")
                for ip, username, password, url in working_streams:
                    if username and password:
                        f.write(f"Stream URL: {url}\n")
                        f.write(f"Credentials: {username}:{password}\n\n")
            
            # Print summary
            print("\nWorking RTSP Streams:")
            for ip, username, password, url in working_streams:
                if username and password:
                    print(f"\nStream URL: {url}")
                    print(f"Credentials: {username}:{password}")
        
        return working_streams
                
    except Exception as e:
        print(f"Error scanning network: {e}")
        return []

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Scan network for RTSP streams using credentials from CSV')
    parser.add_argument('network', help='Network to scan (CIDR notation, e.g., 192.168.1.0/24)')
    parser.add_argument('--port', type=int, default=554, help='Port to scan (default: 554)')
    parser.add_argument('--threads', type=int, default=50, help='Number of concurrent threads (default: 50)')
    parser.add_argument('--csv', required=True, help='CSV file containing username,password combinations')
    
    args = parser.parse_args()
    
    # Load credentials from CSV
    credentials = load_credentials_csv(args.csv)
    
    scan_network(args.network, args.port, credentials, args.threads)