library(testthat)
library(tidyverse)
library(readxl)


# source("function.R")
# expect_equal(add_nums(2, 2), 4)
# actual_size <- nrow(random_half_split(iris))
# expect_equal(actual_size, 75)

test_data <- read_excel('read_in.xlsx')
max <- test_data %>% filter(object=='max') %>% pull(value)
expect_lte(max, 10)
min <- test_data %>% filter(object=='min') %>% pull(value)
expect_gte(min, 0)
