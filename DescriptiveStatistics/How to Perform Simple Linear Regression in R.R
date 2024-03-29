# load the data
#create dataset
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                   score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))

# view first six rows of dataet
head(df)

# attach dataset to make it more  convenient to work with
attach(df)

# step: visualize the data
# create simple scatterplot to view the relatioiship  between the two variables
scatter.smooth(hours, score, main="Hours studied vs. Exam Score", col="purple")

# create boxplot to visualize the distribution of exam scores and check for outliers
boxplot(score)

# fit simple linear regression model
model <- lm(score~hours)

# view model summary
summary(model)

# create residual plot
# define residuals
res <- resid(model)

# produce residual vs. fitted plot
plot(fitted(model), res)

# add a abline at 0
abline(0, 0)


# create Q-Q plot for residuals
qqnorm(res)

# add a straight diagonal line to the plot
qqline(res)









