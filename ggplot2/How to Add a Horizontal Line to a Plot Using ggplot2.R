# Add a Single Horizontal Line to a Plot
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with horizontal line at y=20
ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  geom_hline(yintercept = 20)

# Add Multiple Horizontal Lines to Plots
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# creat scatterplot wiht horizontal lines at y=10, 20, 30
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = c(10, 20, 30))

# Customize Horizontal Lines
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with customized horizontal lines
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = c(20, 30), linetype="dashed", color=c("blue", "red"))
