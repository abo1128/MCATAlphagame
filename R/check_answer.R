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
