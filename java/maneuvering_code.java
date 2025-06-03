import java.util.*;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter size of matrix:");
        int n = sc.nextInt();
        int[][] dp = new int[n][n];

        
        for (int i = 0; i < n; i++) {
            dp[i][0] = 1; 
            dp[0][i] = 1; 
        }

        
        for (int i = 1; i < n; i++) {
            for (int j = 1; j < n; j++) {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1];
            }
        }

        System.out.println("\nDynamic Programming Table (Number of ways to reach each cell):");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.printf("%4d", dp[i][j]); 
            }
            System.out.println();
        }

        System.out.println("\nNumber of ways to reach the bottom-right corner (" + (n - 1) + "," + (n - 1) + "): " + dp[n - 1][n - 1]);

        
    }
}
