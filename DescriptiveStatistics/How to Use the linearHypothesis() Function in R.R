# create data frame
df <- data.frame(score=c(77, 79, 84, 85, 88, 99, 95, 90, 92, 94),
                 hours=c(1, 1, 2, 3, 2, 4, 4, 2, 3, 3),
                 prac_exams=c(2, 4, 4, 2, 4, 5, 4, 3, 2, 1))

# view data frame
df

# fit multiple linear regression model
fit <- lm(score ~ hours + prac_exams, data=df)

# view summary of model
summary(fit)

# we can use the linearHypothesis() function to do so
install.packages("car")
library(car)

# perform hypothesis test for hours=0 and prac=exams=0
linearHypothesis(fit, c("hours=0", prac_exams=0))


























