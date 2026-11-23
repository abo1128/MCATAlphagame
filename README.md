# MCAT Alphabet Game

The objective of the game is to complete the alphabet using MCAT clues given for each letter.

## Installation

```r
remotes::install_github("abo1128/MCATAlphagame")
```

## How to play

In a 180 second time limit, the player gets one clue per letter, and each clue has a correlated answer. The clues either start with the letter or contain the certain letter.

## Example

```r
library(MCATAlphagame)

game <- new_game()
game
play_game(180)
```

The player sees a clue and types the correlated answer

## Functions

- `new_game()`: Starts new game
- `check_answer()`: Checks answers of each question
- `score_game()`: Amount of correct answers in time allotted 
- `play_game()`: Play the game
- `mcat_clues`: Gives clues of game for each letter of alphabet

## AI use statement

I used AI to help with some of the code and errors. It explained the check() notes. I tested and edited the code and can explain it. I wrote the 26 MCAT clues, the game idea, my own documentation wording, and the clue wording in play_game. The full list is in AI_USE.md.
