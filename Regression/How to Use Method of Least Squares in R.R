# The method of least squares is a method we can use to find the
# regression line that best fits a given dataset

# method of least squares in R
# create data frame
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))

# view first six rows of data frame
head(df)

# use method of least squares to fit regression line
model <- lm(score ~ hours, data = df)

# view regressioin model summary
summary(model)

# create scatter plot of data
plot(df$hours, df$score, pch=16, col="steelblue")

# add fitted regression line to scatter plot
abline(model)
