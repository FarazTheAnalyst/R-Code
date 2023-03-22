# Use the apply() function when you want to apply a function to the rows or
# columns of a matrix or data frame.

# create a data frame with three columns and five rows
data <- data.frame(a = c(1, 3, 7, 12, 9),
                   b = c(4, 4, 6, 7, 8),
                   c = c(14, 15, 11, 10, 6))

# view data
data

# find thte sum of each row
apply(data, 1, sum)

# find the sum of each column
apply(data, 2, sum)

# find the mean of each row
apply(data, 1, mean)

# find the mean of each column, rounded to one decimal place
round(apply(data, 2, mean), 1)

# find the standard deviation of each row
apply(data, 1, sd)

# find the standard deviation of each column
apply(data, 2, sd)


# lapply()
# create a data frame with three columns and five rows
data <- data.frame(a = c(1, 3, 7, 12, 9),
                   b = c(4, 4, 6, 7, 8),
                   c = c(14, 15, 11, 10, 6))

# view data 
data

# find mean of each column and return results as a list
lapply(data, mean)

# multiply valeus in each column by 2 and return results as a list
lapply(data, function(data) data*2)

# create a list
x <- list(a=1, b=1:5, c=1:10)

# view x
x

# find the sum of each element in the list
lapply(x, mean)

# multiply values of each element by 5 and return results as list
lapply(x, function(x) x*5)


# sapply()
sapply

# create a data frame with three columns and five rows
data <- data.frame(a = c(1, 3, 7, 12, 9),
                   b = c(4, 4, 6, 7, 8),
                   c = c(14, 15, 11, 10, 6))

# view data
data

# find mean of each column  and return results as matrix
sapply(data, mean)

# multiply values in each column by 2 and return results as matrix
sapply(data, function(data) data*2)

# create a list
x <- list(a=1, b=1:5, c=1:10)

# view a list
x

# find the sum of each element in the list
sapply(x, sum)

# find the mean of each element in the list
sapply(x, mean)

# view first six lines of iris dataset
head(iris)

# find the mean Sepal.Width of each of the three Species
tapply(iris$Sepal.Width, iris$Species, mean)

# find the minimum Petal.Width of each of the three Species
tapply(iris$Petal.Width, iris$Species, min)




