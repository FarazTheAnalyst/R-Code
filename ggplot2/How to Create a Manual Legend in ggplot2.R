# Example: Create Manual Legend in ggplot2
# The following code shows how to plot three fitted regression 
# lines in a plot in ggplot2 with a custom manual legend:
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# create plot with three fitted regression models
ggplot(df, aes(x, y)) + 
  geom_point() + 
  geom_smooth(se=FALSE, aes(color="Linear")) +
  geom_smooth(formula = y~poly(x, 2), se=FALSE, aes(color="Quadratic")) + 
  geom_smooth(formula = y~poly(x, 3), se=FALSE, aes(color="Cubic")) +
  scale_color_manual(name="Regression Model", 
                     breaks = c("Linear", "Quadratic", "Cubic"),
                     values = c("Cubic"="pink", "Quadratic"="blue", "Linear"="purple"))

# Note that we can also use the theme() function to modify the font
# size of the elements in the legend:
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# create plot with three fitted regression models
ggplot(df, aes(x, y)) + 
  geom_point() + 
  geom_smooth(se=FALSE, aes(color="Linear")) +
  geom_smooth(formula = y~poly(x, 2), se=FALSE, aes(color="Quadratic")) + 
  geom_smooth(formula = y~poly(x, 3), se=FALSE, aes(color="Cubic")) +
  scale_color_manual(name="Regression Model", 
                     breaks = c("Linear", "Quadratic", "Cubic"),
                     values = c("Cubic"="pink", "Quadratic"="blue", "Linear"="purple")) +
theme(legend.title = element_text(size=20),
      legend.text = element_text(size=14))
