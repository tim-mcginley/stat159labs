source("../functions/range-value.R")


context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y, na.rm = TRUE), 3)
  expect_length(range_value(y, na.rm = TRUE), 1)

})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L )
  expect_length(range_value(z), 1)
  expect_type(range_value(z),"integer")
  
})

test_that("range works as expected", {
  w <- letters[1:5]
  
  expect_error(range_value(w))
  
})

context("Test for missing values")

test_that("Missing value works as expected", {
  m <- c(1,2,3,4,NA)
  
  expect_gte(missing_values(m), 0)
  expect_length(missing_values(m), 1)
  expect_type(missing_values(m),"double")
  
})
