#create data frame
df <- data.frame(score=c(77, 79, 84, 85, 88, 99, 95, 90, 92, 94),
                 hours=c(1, 1, 2, 3, 2, 4, 4, 2, 3, 3),
                 prac_exams=c(2, 3, 3, 2, 4, 5, 4, 3, 5, 4))

# fit multiple  linear regression model
fit <- lm(score ~ hours + prac_exams, data=df)

# install and load package coeftest
install.packages("lmtest")
library("lmtest")

# perform t-test for each coefficient in model
coeftest(fit)
