test_that("check_answer ignores capital letter", {
  expect_true(check_answer("ALANINE", "Alanine"))
})

test_that("check_answer ignores punctuation", {
  expect_true(check_answer("Wernickes area", "Wernicke's area"))
})

test_that("check_answer ignores s at end", {
  expect_true(check_answer("enzyme", "Enzymes"))
})

test_that("check_answer is FALSE for a wrong answer", {
  expect_false(check_answer("valine", "Alanine"))
})
