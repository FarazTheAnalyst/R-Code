# create data frame

df <- data.frame(hours=c(1, 1, 1, 2, 2, 2, 3, 3, 3, 3,
3, 4, 4, 5, 5, 6, 6, 6, 7, 8),
score=c(75, 66, 68, 74, 78, 72, 85, 82, 90, 82,
        80, 88, 85, 90, 92, 94, 94, 88, 91, 96))

# view first six rows of data frame
head(df)

# 1: Scatter plots
# create scatter plot of hours studied vs. exam score
plot(df$hours, df$score, pch = 16, col = "gold",
     main = "Hours Studied vs. Exam Score",
     xlab = "Hours Studied", ylab = "Exam Score")

# 2: Correlation Coefficients
# calculate correlation between hours studied and exam score received
cor(df$hours, df$score)

# 3: Simple Linear Regression 
# fit simple linear regression model
# fit simple linear regression model

fit <- lm(score ~ hours, data = df)

# view summary of model
summary(fit)























