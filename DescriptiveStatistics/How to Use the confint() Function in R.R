# create data frame
df <- data.frame(score=c(77, 79, 84, 85, 88, 99, 95, 90, 92, 94),
                 hours=c(1, 1, 2, 3, 2, 4, 4, 2, 3, 3),
                 prac_exams=c(2, 3, 3, 2, 4, 5, 4, 3, 5, 4))

# view data frame
df

# fit multiple linear regression model
fit <- lm(score ~ hours + prac_exams, data = df)

# view summary of model
summary(fit)

# calculate 95% condidence interval for each coefficient in model
confint(fit)

# calculate 99% confidence interval for each coeffcinet in model
confint(fit, level=0.99)

# calculate 99% confidence interval for hours
confint(fit, parm = "hours", level = 0.99)




