# load the mtcars Dataset
data(mtcars)

# view first six rows of mtcars dataset
head(mtcars)

# sucmmarize the mtcars dataset
summary(mtcars)

# display rows and columns
dim(mtcars)

# display column names
names(mtcars)

# create histogram of values for mpg
hist(mtcars$mpg,
     main = "Histogram",
     col = "gold",
     xlab = "mpg",
     ylab = "Frequency")

# create boxplot of values for mpg
boxplot(mtcars$mpg,
        main='Distribution of mpg values',
        ylab='mpg',
        col='steelblue',
        border='black')

# create scatter plot of mpg vs.wt
plot(mtcars$mpg, mtcars$wt,
     col="purple",
     main="scatterplot",
     xlab="mpg",
     ylab="wt",
     pch=19)









