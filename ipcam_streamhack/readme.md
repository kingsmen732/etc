
# Bounty Report: RTSP Stream Vulnerability Scanner

## Summary  
The `rtsp_scanner.py` script exposes vulnerabilities in devices with poorly secured RTSP configurations. It automates the detection of weak/default credentials (e.g., `admin:admin`) on devices, potentially allowing unauthorized access to sensitive video feeds or administrative controls.

---

## Vulnerability Details  
- **Type**: Weak Credential Handling on RTSP Streams  
- **Impact**: Unauthorized viewing of surveillance feeds, privacy violations, and potential gateway for larger network attacks.  
- **Severity**: High  

### Proof of Concept  
1. Use the script with a CSV of credentials: 
   credits to Danielmiessler for Seclist [Download payload](https://github.com/danielmiessler/SecLists/blob/master/Passwords/Default-Credentials/default-passwords.csv)
   ```bash
   python rtsp_scanner.py 172.18.9#.0/24 --csv default-passwords.csv
   ```  
2. Example vulnerable stream:  
   ```
   rtsp://admin:admin@172.18.9#.###
   ```  
3. Verified access using VLC or an RTSP client.  

---

## Mitigation Recommendations  
1. Enforce strong default passwords and regular password updates.  
2. Restrict RTSP access to trusted IPs via firewalls.  
3. Enable RTSP encryption (RTSPS) and apply regular firmware updates.  

---

## Impact  
This vulnerability risks exposing live video streams, sensitive environments, and enabling unauthorized control of devices. Organizations may also face regulatory compliance violations.  

**Disclosure**: Submitted under ethical guidelines for responsible disclosure.

Key features:

1. Reads username/password pairs from CSV file
2. Supports multiple credentials per target
3. Saves working streams to a text file
4. Shows progress during scanning

The script will:

1. Load all credentials from the CSV file
2. Scan the network for open RTSP ports
3. Test each credential combination on found devices
4. Save working streams to "working_streams.txt"
5. Display results in the terminal
