import random
# Function to print the tic-tac-toe board
def print_board(board):
    for row in board:
        print(" | ".join(row))
        print("-" * 9)

# Function to check if a player has won
def check_win(board, player):
    # Check rows
    for row in board:
        if all(cell == player for cell in row):
            return True

    # Check columns
    for col in range(3):
        if all(board[row][col] == player for row in range(3)):
            return True

    # Check diagonals
    if board[0][0] == board[1][1] == board[2][2] == player:
        return True
    if board[0][2] == board[1][1] == board[2][0] == player:
        return True

    return False

# Function to play the tic-tac-toe game
def play_game():
    board = [[" " for _ in range(3)] for _ in range(3)]
    current_player = "X"

    while True:
        print_board(board)
        print(f"Player {current_player}'s turn")

        if current_player == "X":
            # Get user input for row and column
            row = int(input("Enter the row (0-2): "))
            col = int(input("Enter the column (0-2): "))
        else:
            # Generate random computer move
            row = random.randint(0, 2)
            col = random.randint(0, 2)
            while board[row][col] != " ":
                row = random.randint(0, 2)
                col = random.randint(0, 2)

        # Update the board with the player's move
        board[row][col] = current_player

        # Check if the current player has won
        if check_win(board, current_player):
            print(f"Player {current_player} wins!")
            break

        # Switch to the other player
        current_player = "O" if current_player == "X" else "X"

# Start the game
play_game()
