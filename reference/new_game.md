# MCAT Alphabet game

Game objective: Complete the alphabet with the clues given in the
allowed time limit.

## Usage

``` r
new_game(time_limit = 180)
```

## Arguments

- time_limit:

  Number of seconds each player is allowed. Default is 180 seconds.

## Value

An object of class `alphabet_game`

## Examples

``` r
game <- new_game()
game$time_limit
#> [1] 180
```
