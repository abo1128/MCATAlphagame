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
