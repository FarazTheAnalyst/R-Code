# Example 1: Use str_c with No Separator
library("stringr")

# define two vectors
vec1 <- c('Mike', 'Tony', 'Will', 'Chad', 'Rick')
vec2 <- c('Douglas', 'Atkins', 'Durant', 'Johnson', 'Flair')

# join vectors  together element-wise
str_c(vec1, vec2)

# Example 2: Use str_c with Separator
library("stringr")

#define two vectors
vec1 <- c('Mike', 'Tony', 'Will', 'Chad', 'Rick')
vec2 <- c('Douglas', 'Atkins', 'Durant', 'Johnson', 'Flair')

#join vectors together element-wise
str_c(vec1, vec2, sep="_")

library("stringr")

# define two vectors
vec1 <- c('Mike', 'Tony', 'Will', 'Chad', 'Rick')
vec2 <- c('Douglas', 'Atkins', 'Durant', 'Johnson', 'Flair')

# join vectors together element-wise
str_c(vec1, vec2, sep = "-")
