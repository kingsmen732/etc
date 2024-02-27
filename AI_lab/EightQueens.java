public class EightQueens {
    private static final int BOARD_SIZE = 8;
    private static int[] queens;

    public static void main(String[] args) {
        queens = new int[BOARD_SIZE];
        solve(0);
    }

    private static void solve(int row) {
        if (row == BOARD_SIZE) {
            printSolution();
            return;
        }

        for (int col = 0; col < BOARD_SIZE; col++) {
            if (isValidPlacement(row, col)) {
                queens[row] = col;
                solve(row + 1);
            }
        }
    }

    private static boolean isValidPlacement(int row, int col) {
        for (int i = 0; i < row; i++) {
            if (queens[i] == col || queens[i] - col == i - row || queens[i] - col == row - i) {
                return false;
            }
        }
        return true;
    }

    private static void printSolution() {
        for (int i = 0; i < BOARD_SIZE; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                if (queens[i] == j) {
                    System.out.print("Q ");
                } else {
                    System.out.print(". ");
                }
            }
            System.out.println();
        }
        System.out.println();
    }
}
