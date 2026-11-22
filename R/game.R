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
    clues = MCATAlphagame::mcat_clues,
    answers = rep(NA_character_, nrow(MCATAlphagame::mcat_clues)),
    time_limit = time_limit
  )
  class(game) <- "alphabet_game"
  game
}
#' Prints an MCAT alphabet game
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
#' Game scoring
#'
#' Counts how many of the answers are correct
#'
#' @param game An object of class `alphabet_game`
#' @return Number of correct answers.
#' @examples
#' game <- new_game()
#' score_game(game)
#' @export
score_game <- function(game) {
  matches <- mapply(check_answer, game$answers, game$clues$answer)
  sum(matches, na.rm = TRUE)
}
#' Play MCAT alphabet game
#'
#' Shows one clue at a time and reads the player's typed answer.
#' Stops when all clues are answered or the time limit is reached,
#' then prints the score.
#'
#' @param time_limit Number of seconds the player is allowed. Default is 180.
#' @return The finished `alphabet_game` object, returned invisibly.
#' @examples
#' if (interactive()) {
#'   play_game()
#' }
#' @export
play_game <- function(time_limit = 180) {
  game <- new_game(time_limit)
  start <- as.numeric(Sys.time())
  for (i in 1:nrow(game$clues)) {
    elapsed <- as.numeric(Sys.time()) - start
    if (elapsed > time_limit) {
      cat("Time is up!\n")
      break
    }
    if (game$clues$mode[i] == "starts") {
      cat("Starts with", game$clues$letter[i], ":", game$clues$clue[i], "\n")
    } else {
      cat("Contains", game$clues$letter[i], ":", game$clues$clue[i], "\n")
    }
    game$answers[i] <- readline("Answer: ")
  }
  cat("Score:", score_game(game), "out of", nrow(game$clues), "\n")
  invisible(game)
}
