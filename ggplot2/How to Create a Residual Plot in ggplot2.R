# Example: Creating a Residual Plot in ggplot2
# view first six rows of mtcars dataset
head(mtcars)

# First, we'll fit a regression model using mpg as the response
# variable and qsec as the predictor variable:
# fit regression model
model <- lm(mpg ~ qsec, data=mtcars)

library("ggplot2")

# create residual plot
ggplot(model, aes(x=.fitted, y=.resid)) +
  geom_point() +
  geom_hline(yintercept = 0)

library("ggplot2")

# create residual plot with title and axis labels
ggplot(model, aes(x=.fitted, y=.resid)) +
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(title = "Residual vs. Fitted Values Plot", x="Fitted Values", y="Residuals")
