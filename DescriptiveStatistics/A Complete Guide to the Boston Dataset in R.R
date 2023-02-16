# load the Boston Dataset
library(MASS)

# view first sex rows of Boston dataset
head(Boston)

# veiw description of each variable in dataset
?Boston

# summarize Boston dataset
summary(Boston)

# display rows and column
dim(Boston)

# create histogram of values for "rm" column
hist(Boston$rm,
     col = "gold",
     main = 'Histogram of Rooms per Dwelling',
     xlab = "Rooms",
     ylab = "Frequency")
# create boxplot of rooms per dwelling
boxplot(Boston$rm,
        col = "purple",
        main = "Boxplot of Rooms per Dwelling",
        ylab = "rm",
        border = "black")

# create scatterplot of median home value vs crime rate
plot(Boston$medv, Boston$crim,
     col="purple",
     main = "Median Home Value vs. Crime Rate",
     xlab = "Median Home Value",
     ylab = "Crime Rate",
     pch = 19)



