# strip chart for a single numeric vector
# view first six rows of iris dataset
head(iris)

stripchart(iris$Sepal.Length)

# add additional arguments
stripchart(iris$Sepal.Length,
           main="Sepal Length Distribution",
           xlab = "Sepal Length",
           col = "red", 
           pch = 1,
           method = "jitter")

# stacking the points
stripchart(iris$Sepal.Length,
           main="Sepal Length Distribution",
           xlab = "Sepal Length",
           col = "red",
           pch = 1,
           method = "stack")

stripchart(iris$Sepal.Length,
           main="Sepal Length Distribution",
           ylab = "Sepal Length",
           col = "red",
           pch = 1,
           method = "jitter",
           vertical = "TRUE")

# strip chart for multiple numeric vectors
# create list pf variables
x <- list("Sepal Length" = iris$Sepal.Length, "Sepal Width" = iris$Sepal.Width)

# create plot that contains one strip chart per variable
stripchart(x, 
           main="Sepal Width & Length Distributions",
           xlab = "Measurements",
           ylab = "Variable",
           col=c("steelblue", "coral2"),
           pch = 16,
           method = "jitter")

# using vertical stripchart
stripchart(x,
           main="Sepal Width & Length Distribution",
           xlab="Measurement",
           ylab = "Variable",
           col = c("steelblue", "coral2"),
           method = "jitter",
           vertical = TRUE)

# using the form of y~x into the stripchart()
stripchart(Sepal.Length ~ Species,
           data = iris,
           main = "Sepal Length by Species",
           xlab = "Species",
           ylab = "Sepal Length",
           col = c("steelblue", "coral2", "purple"),
           pch = 16,
           method = "jitter",
           vertical = TRUE)



































