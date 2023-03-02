# plot a logistic regression curve in base R
# fit logistic regression model
model <- glm(vs~hp, data=mtcars, family=binomial)
model

# define new data frame that contains predictor variable
newdata <- data.frame(hp=seq(min(mtcars$hp), max(mtcars$hp), len=500))
newdata

# use fitted model to predict values of vs
newdata$vs <- predict(model, newdata, type = "response")
newdata$vs

# plot logistic regression curve
plot(vs ~ hp, data=mtcars, col="steelblue")
lines(vs ~ hp, newdata, lwd=2)

# plot a logistic regression curve in ggplot2
library("ggplot2")

# plot logistic regression curve
ggplot(mtcars, aes(x=hp, y=vs)) +
  geom_point(alpha=0.5) +
  stat_smooth(method = "glm", se=FALSE, method.args = list(family=binomial),
              col="red", lty=2)
