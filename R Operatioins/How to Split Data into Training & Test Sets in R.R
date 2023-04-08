# Example 1: Split Data Into Training & Test Set Using Base R
# load iris dataset
data(iris)

# make this example reproducible
set.seed(1)

# use 70% of dataset as training set and remaining 30% as testing set
sample <- sample(c(TRUE, FALSE), nrow(iris), replace=TRUE, prob=c(0.7,0.3))
train <- iris[sample, ]
test <- iris[!sample, ]

# view dimensioins of training set
dim(train)

# view dimentions of test set
dim(test)

# view first few rows of training set
head(train)

# Example 2: Split Data Into Training & Test Set Using caTools
library(caTools)

# load iris dataset
data("iris")

# make this example reproducible
set.seed(1)

# use 70% of dataset as training set and remaining 30% as testing set
sample <- sample.split(iris$Species, SplitRatio = 0.7)
sample

train <- subset(iris, sample == TRUE)
test <- subset(iris, sample == FALSE)

# view dimensions of training set
dim(train)

# view deimensions of test set
dim(test)

# Example 3: Split Data Into Training & Test Set Using dplyr
library(dplyr)

# load iris dataset
data(iris)

# make this example reproducible
set.seed(1)

# create ID variable
iris$id <- 1:nrow(iris)

# use 70% of dataset as training set and remaning 30% as testing set
train <- iris %>% dplyr::sample_frac(0.7)
test <- dplry::anti_join(iris, train, by="id")

# view dimensions of training set
dim(train)

# view dimensions of test set
dim(test)

# Note that these training and test sets contain one extra 'id'
# column that we created.
# Be sure not to use this column (or drop it entirely from the
# data frames) when fitting your machine learning algorithm