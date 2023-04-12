# There are two reasons for why this error might occur:

# There are NA, NaN, or Inf values in the dataset
# One of the variables in the dataset is a character
# The easiest way to fix this error is to remove rows with
# missing data and convert character variables to factor variables:

# remove rows with missing values
df <- na.omit(df)

# convert all character variables to factor variables
library("dplyr")

# convert all character variables to factor variables
library("dplyr")
df %>% mutate_if(is.character, as.factor)

# How to Reproduce the Error
library("randomForest")

# create data frame
df <- data.frame(y <- c(30, 29, 30, 45, 23, 19, 9, 8, 11, 14),
                 x1 <- c('A', 'A', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 x2 <- c(4, 4, 5, 7, 8, 7, 9, 6, 13, 15))

# attempt to fit random forest model
model <- randomForest(formula = y ~ ., data=df)
str(df)

# how to fix the error
library("dplyr")

# convert each character column to factor
df = df %>% mutate_if(is.character, as.factor)

# fit random forest model
model <- randomForest(formula = y ~ ., data=df)

# view summary of model
model


















