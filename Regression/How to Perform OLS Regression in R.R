# Ordinary least squares (OLS) regression is a method that allows
# us to find a line that best describes the relationship
# between one or more predictor variables and a response variable.

# create dataset
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))

# view first six rows of dataset
head(df)

# step: visualize the data
library("ggplot2")

# create scatter plot
ggplot(df, aes(x=hours, y=score)) +
  geom_point(size=2)

# check outliers boxplot
# create scatter plot
ggplot(df, aes(y=score)) +
  geom_boxplot()

# step3: Perform OLS Regression
# fit simple linear regression model
model <- lm(score~hours, data=df)

# view model summary
summary(model)

# create Residual plots
# define residuals
res <- resid(model)

# prodcue residual vs. fitted plot
plot(fitted(model), res)

# add a horizontal line at 0
abline(0, 0)


# create  q-q   plot for residuals
qqnorm(res)

# add a straight diagonal line to the plot
qqline(res)














