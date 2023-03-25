# How to Normalize (or "Scale") Variables in R
# view first six rows of iris data set
head(iris)

# define Min-Max normalization function
min_max_norm <- function(x){
  (x -min(x)) / (max(x) - min(x))
}

# apply Min-Max normalization to first four columns in iris dataset
iris_norm <- as.data.frame(lapply(iris[1:4], min_max_norm))
iris_norm

# add back Species column
iris_norm$Species <- iris$Species

# view first six rows of iris_norm
head(iris_norm)

# Z-Score Standardization
# standardize Sepal.Width
iris$Sepal.Width <- (iris$Sepal.Width -  mean(iris$Sepal.Width)) / sd(iris$Sepal.Width)

# find mean of Sepal.Width
mean(iris$Sepal.Width)

# find standard deviation of Sepal.Width
sd(iris$Petal.Width)

# standardize first four columns of iris dataset
iris_standardize <- as.data.frame(scale(iris[1:4]))

# view first six rows of stadardized dataset
head(iris_standardize)

# this will through error
scale(iris)

# load dplyr package
library("dplyr")

# standardize Sepal.Width and Sepal.Length
iris_new <- iris %>% mutate_each_(list(~scale(.) %>% as.vector),
                                  vars = c("Sepal.Width","Sepal.Length"))

# view first six rows of new data frame
head(iris_new)




















