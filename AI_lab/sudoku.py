def solve_sudoku(board):
    # Check if the board is already solved
    if is_solved(board):
        return board

    # Find an empty cell
    row, col = find_empty_cell(board)

    # Try different numbers in the empty cell
    for num in range(1, 10):
        if is_valid(board, row, col, num):
            # Place the number in the cell
            board[row][col] = num

            # Recursively solve the updated board
            if solve_sudoku(board):
                return board

            # If the current placement is not valid, backtrack
            board[row][col] = 0

    # If no solution is found, return None
    return None

def is_solved(board):
    # Check if the board is completely filled
    # and all the numbers are valid
    for row in board:
        if 0 in row:
            return False
    return True

def find_empty_cell(board):
    # Find the first empty cell in the board
    for row in range(len(board)):
        for col in range(len(board[row])):
            if board[row][col] == 0:
                return row, col
    return None, None

def is_valid(board, row, col, num):
    # Check if placing 'num' in the given cell is valid
    # Check row
    for i in range(len(board[row])):
        if board[row][i] == num:
            return False

    # Check column
    for i in range(len(board)):
        if board[i][col] == num:
            return False

    # Check 3x3 grid
    start_row = (row // 3) * 3
    start_col = (col // 3) * 3
    for i in range(start_row, start_row + 3):
        for j in range(start_col, start_col + 3):
            if board[i][j] == num:
                return False

    return True

# Example usage
board = [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 0, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

solution = solve_sudoku(board)
if solution:
    print("Sudoku solved:")
    for row in solution:
        print(row)
else:
    print("No solution found.")
