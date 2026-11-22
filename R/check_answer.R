#' Check a player's answer
#'
#' Compares the player's answer to the correct answer. Capital letters,
#' extra spaces, punctuation, and a final "s" are ignored.
#'
#' @param answer The text the player typed.
#' @param correct The correct answer from the clue bank.
#' @return `TRUE` if the answers match, otherwise `FALSE`.
#' @examples
#' check_answer("ALANINE", "Alanine")
#' check_answer("Wernickes area", "Wernicke's area")
#' check_answer("enzyme", "Enzymes")
#' check_answer("valine", "Alanine")
#' @export
check_answer <- function(answer, correct) {
  answer <- tolower(answer)
  correct <- tolower(correct)
  answer <- trimws(answer)
  correct <- trimws(correct)
  answer <- gsub("[^a-z0-9 ]", "", answer)
  correct <- gsub("[^a-z0-9 ]", "", correct)
  answer <- sub("s$", "", answer)
  correct <- sub("s$", "", correct)
  answer == correct
}

