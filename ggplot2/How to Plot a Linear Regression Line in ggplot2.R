# Example: Plot a Linear Regression Line in ggplot2
# create dataset
data <- data.frame(y=c(6, 7, 7, 9, 12, 13, 13, 15, 16, 19, 22, 23, 23, 25, 26),
                   x=c(1, 2, 2, 3, 4, 4, 5, 6, 6, 8, 9, 9, 11, 12, 12))

# fit linear regression model to dataset and view model summary
model <- lm(y~x, data=data)
summary(model)

# The following code shows how to visualize the fitted linear regression model:
library("ggplot2")

# create plot to visualize fitted linear regression model
ggplot(data, aes(x, y)) + 
  geom_point() + 
  geom_smooth(method = "lm")

# By default, ggplot2 adds standard error lines to the chart.
# You can disable these by using the argument se=FALSE as follows:
library(ggplot2)

# create regression plot with no standard error lines
ggplot(data, aes(x, y)) + 
  geom_point() + 
  geom_smooth(method = "lm", se=FALSE)

# Lastly, we can customize some aspects of the chart to make it more visually appealing:
library("ggplot2")

# create regression plot with customized style
ggplot(data, aes(x, y)) + 
  geom_point() + 
  geom_smooth(method="lm", se=FALSE, color="turquoise3") +
  theme_minimal() + 
  labs(x="X Values", y="Y Values", title="Linear Regression Plot") +
  theme(plot.title = element_text(hjust=0.5, size=20, face = "bold"))
