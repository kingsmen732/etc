def print_board(board):
    for row in board:
        print(" ".join(map(str, row)))

def find_empty_location(board):
    for row in range(len(board)):
        for col in range(len(board[0])):
            if board[row][col] == 0:
                return row, col
    return None, None

def used_in_row(board, row, num):
    return num in board[row]

def used_in_col(board, col, num):
    return num in [board[row][col] for row in range(len(board))]

def used_in_box(board, start_row, start_col, num):
    box_size = int(len(board) ** 0.5)
    for row in range(start_row, start_row + box_size):
        for col in range(start_col, start_col + box_size):
            if board[row][col] == num:
                return True
    return False

def is_safe(board, row, col, num):
    box_size = int(len(board) ** 0.5)
    start_row = row - row % box_size
    start_col = col - col % box_size
    return not used_in_row(board, row, num) and not used_in_col(board, col, num) and not used_in_box(board, start_row, start_col, num)

def solve_sudoku(board):
    row, col = find_empty_location(board)
    if row is None or col is None:
        return True
    
    for num in range(1, len(board) + 1):
        if is_safe(board, row, col, num):
            board[row][col] = num
            if solve_sudoku(board):
                return True
            board[row][col] = 0
    
    return False

board_4x4 = [
    [0, 2, 0, 0],
    [0, 0, 6, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 5]
]

board_9x9 = [
    [0, 0, 0, 0, 0, 6, 0, 0, 0],
    [2, 0, 5, 4, 0, 9, 0, 0, 0],
    [4, 0, 0, 8, 0, 0, 3, 0, 0],
    [0, 6, 0, 0, 0, 8, 0, 0, 0],
    [0, 3, 0, 0, 0, 0, 1, 0, 5],
    [0, 0, 0, 0, 0, 0, 0, 4, 7],
    [0, 0, 3, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0, 9, 0, 6],
    [0, 0, 0, 0, 0, 0, 0, 0, 0]
]

# Solve 4x4 Sudoku
print("Solving 4x4 Sudoku:")
solve_sudoku(board_4x4)
print_board(board_4x4)

# Solve 9x9 Sudoku
print("\nSolving 9x9 Sudoku:")
solve_sudoku(board_9x9)
print_board(board_9x9)
