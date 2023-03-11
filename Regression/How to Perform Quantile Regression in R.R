# Linear regression is a method we can use to understand the 
# relationship between one or more predictor variables and a 
# response variable.

# Typically when we perform linear regression, we're 
# interested in estimating the mean value of the response variable.

# However, we could instead use a method known as quantile regression
# to estimate any quantile or percentile value of the response value
# such as the 70th percentile, 90th percentile, 98th percentile, etc.

# install and load packages
install.packages("quantreg")
library("quantreg")

# make this example reproducible
set.seed(0)

# create data frame
hours <- runif(100, 1, 10)
score <- 60 + 2*hours + rnorm(100, mean = 0, sd = .45*hours)
df <- data.frame(hours, score)

# view first six rows
head(df)

# perform quantile Regression
# fit model
model <- rq(score ~ hours, data = df, tau = 0.9)

# view summary of model
summary(model)

# visualize the results
library("ggplot2")

# create scatterplot with quantile regression line
ggplot(df, aes(x=hours, y=score)) +
  geom_point() +
  geom_abline(intercept = coef(model)[1], slope = coef(model)[2])

# create scatterplot with quantile regression line and siple linear regression line
ggplot(df, aes(hours, score)) +
  geom_point() + 
  geom_abline(intercept = coef(model)[1], slope = coef(model)[2]) +
  geom_smooth(method = "lm", se=FALSE)  #se False mean no confidense interval














