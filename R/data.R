#' MCAT clues for the alphabet game
#'
#' A data frame with one MCAT clue for each letter of the alphabet.
#'
#' @format A data frame with 26 rows and 4 variables:
#' \describe{
#'   \item{letter}{The letter the answer is tied to.}
#'   \item{mode}{Either "starts" (answer begins with the letter) or
#'     "contains" (answer includes the letter).}
#'   \item{clue}{The clue shown to the player.}
#'   \item{answer}{The correct answer.}
#' }
#' @source Written by Youssef Aboyoussef.
"mcat_clues"
