# Play MCAT alphabet game

Shows one clue at a time and reads the player's typed answer. Stops when
all clues are answered or the time limit is reached, then prints the
score and a review of the wrong answers.

## Usage

``` r
play_game(time_limit = 180)
```

## Arguments

- time_limit:

  Number of seconds the player is allowed. Default is 180.

## Value

The finished `alphabet_game` object with a score and the results.

## Examples

``` r
if (interactive()) {
  play_game()
}
```
