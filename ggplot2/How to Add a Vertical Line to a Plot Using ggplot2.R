# Add a Single Vertical Line to a Plot
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with vertical line at x=10
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = 10)

# Add Multiple Vertical Lines to Plots
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with vertical line at x=6, 10 and 11
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = c(6, 10, 11))

# Customize Vertical Lines
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with customized vertical line
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = 5, linetype="dashed", color="blue", size=2)

library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with customized vertical lines
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = c(5, 7), linetype="dashed", color=c("blue", "red"))
















