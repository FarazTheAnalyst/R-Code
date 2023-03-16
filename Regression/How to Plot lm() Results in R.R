# Example 1: Plot lm() Results in Base R
# fit regression model
fit <- lm(mpg ~ wt, data = mtcars)

# create scatterplot
plot(mpg ~ wt, data = mtcars)

# add fitted regression line to scatterplot
abline(fit)

# Example 2: Plot lm() Results in ggplot2
library("ggplot2")

# fit regression model
fit <- lm(mpg ~ wt, data = mtcars)

# create scatterplot with fitted regression line
ggplot(fit, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = "lm")

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = "lm", se=FALSE)

install.packages("ggpubr")
library("ggpubr")

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = "lm", se=FALSE) +
  stat_regline_equation(label.x.npc = "center")
