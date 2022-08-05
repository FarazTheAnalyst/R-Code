# Starting with the Right Data
# Make sure all your data is contined in a data frame or in vector if its single value
# Counting unique values
sapply(mtcars, function(x) length(unique(x)))

# preparing the data
mtcars
cars <- transform(mtcars[c(1, 2, 9, 10)],
                  gear = ordered(gear),
                  am = factor(am, labels = c("auto", "manual")))
cars
str(cars, vec.len = 2)

# Describing Continuous Variables
# talking about the center of your data
mean(cars$mpg)
median(cars$cyl)

# Describing the variation
cars
sd(cars$mpg)   #low standard deviation in relation to mean is good
var(cars$mpg)

# Checking the quantiles
# a quantile is where a sample is divided into equal-sized, adjacent, subgroups .
# Calculating the range
range(cars$mpg)
 # Calcualting the quartiles
quantile(cars$mpg)
fivenum(cars$mpg)

# Getting on speed with the quantile function
quantile(cars$mpg, probs = c(0.05, 0.95))
quantile(cars$mpg, probs = c(0.20, 0.70))

# Describing Categories
# counting appearances
# Creating a table
amtable <- table(cars$am)
amtable

# Working with tables
class(amtable)

# Calculating proportions
amtable / sum(amtable)
prop.table(amtable)

# Finding the center
id <- amtable == max(amtable)
id
names(amtable)[id]
which.max(amtable)

# Describing Distributions
# Plotting histograms
?hist
hist(cars$mpg, col = "grey")

# Playing with breaks
hist(cars$mpg, breaks = 4)
hist(cars$mpg, breaks = c(5, 15, 25, 35))

# Using frequencies or densities

# Creating a density plot
mpgdens <- density(cars$mpg)
plot(mpgdens)
?density
length(cars$mpg)

# Plotting densities in a histogram
hist(cars$mpg, col = "grey", freq = FALSE)
lines(mpgdens)

# Describing Multiple Variables
# Summarizing a complete dataset
summary(cars)            #Getting the output

# Fixing a problem
cars$cyl <- as.factor(cars$cyl)
summary(cars)

# Plotting quantiles for subgroups
boxplot(mpg ~ cyl, data = cars)
cars

# Extracting the data from the plots
mpghist <- hist(cars$mpg)
mpghist
mpgboxp <- boxplot(mpg ~ cyl, data = cars)
mpgboxp
boxplot(mpg ~ cyl, data = cars, plot = FALSE)
?boxplot
mpgboxp <- boxplot(mpg ~ cyl, data = cars)
n <- nlevels(as.factor(cars$cyl))
n
text(1:n, mpgboxp$stats[1, ], paste("n =", mpgboxp$n), pos = 1)
?text
mpgboxp$n
1:n  # tells x component
mpgboxp$stats[1, ]   #tells y component

# Tracking correlations
names(iris)

# Loking at relations
iris
?pairs
plot(iris[-5])
pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",
      pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)])

## Getting the numbers
with(iris, cor(Petal.Width, Petal.Length))
cor(iris$Petal.Width, iris$Petal.Length)

# Calculating correlations for multiple variables
iris.cor <- cor(iris[-5])
iris.cor
str(iris.cor)
?cor
iris.cor["Petal.Width", "Petal.Length"]

# Working with tables
# Creating a two-way table
#Creating a table from two variables
cars
with(cars, table(am, gear))

# Creating tables from a matrix
trial <- matrix(c(34, 11, 9, 32), ncol = 2)
colnames(trial) <- c("sick", "healthy")
rownames(trial) <- c("risk", "no_risk")
trial.table <- as.table(trial)
trial.table

# Extracting the numbers
trial.table["risk", "sick"]
trial.table["no_risk", "healthy"]

# Converting tables to a data frame
trial.df <- as.data.frame(trial)
str(trial.df)
trial.table.df <- as.data.frame(trial.table)
str(trial.table.df)
trial.table.df

# Looking at margins and proportions
# Adding margins to the table
addmargins(trial.table)
addmargins(trial.table, margin = 2)

# Calculating proportion
prop.table(trial.table)

# Calculating proportions over columns and rows
prop.table(trial.table, margin = 1)











