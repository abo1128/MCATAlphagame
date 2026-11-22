#' MCAT Alphabet game
#'
#' Game objective: Complete the alphabet with the clues given in the allowed time limit.
#'
#' @param time_limit Number of seconds each player is allowed. Default is 180 seconds.
#' @return An object of class `alphabet_game`
#' @examples
#' game <- new_game()
#' game$time_limit
#' @export
new_game <- function(time_limit = 180) {
  game <- list(
    clues = mcat_clues,
    answers = rep(NA_character_, nrow(mcat_clues)),
    time_limit = time_limit
  )
  class(game) <- "alphabet_game"
  game
}
#' Builds an MCAT alphabet game
#'
#' Shows a short summary of the game without revealing any answers.
#'
#' @param x An object of class `alphabet_game`.
#' @param ... Not used.
#' @return The game object `x`, returned invisibly.
#' @export
print.alphabet_game <- function(x, ...) {
  cat("MCAT Alphabet Game\n")
  cat("Clues:", nrow(x$clues), "\n")
  cat("Time limit:", x$time_limit, "seconds\n")
  invisible(x)
}
