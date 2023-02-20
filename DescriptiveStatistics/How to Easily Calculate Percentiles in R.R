# finding percentiles of a vector
# create vector of 100 random values uniformly distributed between 0 and 500
data <- runif(100, 0, 500)

# view data
data

# find the quartiles  (25th, 50th, 75th of the vector
quantile(data, probs = c(.25, .5, .75))

# find the deciles  (10thm, 20th, 30th, and 75th percentiles) of the vector
quantile(data, probs = seq(.1, .9, by = .1))

# find the 37th , 53rd, and 87th percentiles
quantile(data, probs =  c(.37, .53, .87))

# Finding Percentiles of data frame column
# view first six rows of iris dataset
head(iris)

# find 90th pecentile value for the column Sepal.Length
quantile(iris$Sepal.Length, probs = 0.9)

# finding percentile of several data frame columns
# define columns we want to find percentiles for 
small_iris <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Length")]

# view dataset
small_iris

# use apply() function to find 90th percentile for every column
apply(small_iris, 2, function(x) quantile(x, probs = .9))

# load dplyr library
library("dplyr")

# find 90th percentile of sepal.length for each of the three species
iris %>% 
  group_by(Species) %>% 
  summarise(percent90 = quantile(Sepal.Length, probs = .9))

# find te 90th percentile for all of the variables by species
iris %>% 
  group_by(Species) %>% 
  summarise(percent90_SL = quantile(Sepal.Length, probs = .9),
            percent90_SW = quantile(Sepal.Width, probs = .9),
            percent90_PL = quantile(Petal.Length, probs= .9),
            percent90_PW = quantile(Petal.Width, probs = .9))

# visualizing Percentiles
# there is no built in function to visualize the percentiles
n = length(iris$Sepal.Length)

# view length
n
plot((1:n - 1)/(n - 1), sort(iris$Sepal.Length), type = "l",
     main = "Visualizing Percentiles",
     xlab = "Percentile",
     ylab = "Value")








































