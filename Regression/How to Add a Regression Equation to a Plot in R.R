# Step 1: Create the Data
# make this example reproducible 
set.seed(1)

# create data frame
df <- data.frame(x = c(1:100))
df$y <- 4*df$x + rnorm(100, sd=20)

# view head of data frame
head(df)

# create the plot with regression Equation
# load necessary libraries
library("ggplot2")
library("ggpubr")

# create plot with regression line and regression equation 
ggplot(data = df, aes(x=x, y=y)) +
  geom_smooth(method = "lm") +
  geom_point() +
  stat_regline_equation(label.x=30, label.y=310)

# step:3 add r-squared to the plot(optional)
# create plot with regression line,  regression equation
ggplot(data=df, aes(x=x, y=y)) +
  geom_smooth(method="lm") +
  geom_point() +
  stat_regline_equation(label.x = 30, label.y = 310) +
  stat_cor(aes(label=..rr.label..), label.x = 30, label.y=290)
