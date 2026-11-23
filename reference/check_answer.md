# Check a player's answer

Compares the player's answer to the correct answer. Capital letters,
extra spaces, punctuation, and a final "s" are ignored.

## Usage

``` r
check_answer(answer, correct)
```

## Arguments

- answer:

  The text the player typed.

- correct:

  The correct answer from the clue bank.

## Value

`TRUE` if the answers match, otherwise `FALSE`.

## Examples

``` r
check_answer("ALANINE", "Alanine")
#> [1] TRUE
check_answer("Wernickes area", "Wernicke's area")
#> [1] TRUE
check_answer("enzyme", "Enzymes")
#> [1] TRUE
check_answer("valine", "Alanine")
#> [1] FALSE
```
