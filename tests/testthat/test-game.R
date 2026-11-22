test_that("alphabet_game with  new_game", {
  game <- new_game()
  expect_s3_class(game, "alphabet_game")
  expect_equal(nrow(game$clues), 26)
  expect_equal(game$time_limit, 180)
})

test_that("score_game counts the correct answers", {
  game <- new_game()
  expect_equal(score_game(game), 0)
  game$answers[1] <- "alanine"
  game$answers[2] <- "brocas area"
  expect_equal(score_game(game), 2)
})
