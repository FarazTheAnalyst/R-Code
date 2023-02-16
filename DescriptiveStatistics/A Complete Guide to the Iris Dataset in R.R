# load the iris dataset
data("iris")

# view first six rows of iris dataset
head(iris)

# summarize the iris dataset
summary(iris)

# display rows and columns
dim(iris)

# display column names
names(iris)

# create histogram of values for sepal length
hist(iris$Sepal.Length,
     col = "gold",
     main = "Histogram",
     xlab = "Length",
     ylab = "Frequency")

# create scatter plot of sepal width vs. sepal length
plot(iris$Sepal.Width, iris$Sepal.Length,
     col="gold",
     main = "Scatterplot",
     xlab = "Sepal Width",
     ylab = "Sepal Length",
     pch = 19)

# create  a box plot of species
boxplot(Sepal.Length~Species,
        data = iris,
        main="Boxplot",
        col="gold",
        xlab = "Species",
        ylab = "Sepal Length",
        border = "black")








