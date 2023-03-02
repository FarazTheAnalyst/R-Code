# create a log-log plot in base R
# create data 
df <- data.frame(x=3:22,
                 y=c(3, 4, 5, 7, 9, 13, 15, 19, 23, 24, 29,
                     38, 40, 50, 56, 59, 70, 89, 104, 130))

# create scatterplot of x vs. y
plot(df$x, df$y, main="Rwq Data")

# create log-log plot of x vs. y
plot(log(df$x), log(df$y), main="log-log Plot")

# create a log-log plot in ggplot2
library("ggplot2")

# create data
df <- data.frame(x=3:22,
                 y=c(3, 4, 5, 7, 9, 13, 15, 19, 23, 24, 29,
                     38, 40, 50, 56, 59, 70, 89, 104, 130))

# define new data frame
df_log <- data.frame(x=log(df$x), y=log(df$y))

# create scatterplot using ggplot2
ggplot(df_log, aes(x=x, y=y)) +
  geom_point()

# modifying the plot
ggplot(df_log, aes(x=x, y=y)) +
  geom_point() +
  labs(title="Log-Log Plot", x="Log(x)", y="Log(y)") +
  theme_minimal()
