import random

def hangman(tries):
    words = ['apple', 'banana', 'cherry', 'date', 'elderberry', 'fig', 'grape']
    word = random.choice(words)
    guessed_letters = []

    while tries > 0:
        # Display the current state of the word
        display_word = ''
        for letter in word:
            if letter in guessed_letters:
                display_word += letter
            else:
                display_word += '_'
        print(display_word)

        # Prompt the user for a letter
        guess = input('Guess a letter: ').lower()

        # Check if the letter has already been guessed
        if guess in guessed_letters:
            print('You already guessed that letter!')
            continue

        # Add the letter to the list of guessed letters
        guessed_letters.append(guess)

        # Check if the letter is in the word
        if guess in word:
            print('Correct guess!')
        else:
            print('Wrong guess!')
            tries -= 1

        # Check if the word has been completely guessed
        if all(letter in guessed_letters for letter in word):
            print('Congratulations, you won!')
            break

    if tries == 0:
        print('Game over. The word was', word)

hangman(8)  # Replace 8 with the desired number of tries
