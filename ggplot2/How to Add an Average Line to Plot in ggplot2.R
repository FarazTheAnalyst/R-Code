# Example: Add Average Line to Plot in ggplot2
# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                 y=c(2, 5, 6, 5, 7, 8, 10, 12, 10, 9, 11, 15))

# view head of data frame
head(df)

library("ggplot2")

# create scatter plot with average line to represent average y-value
ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_hline(yintercept = mean(df$y, na.rm = TRUE))

# calculate average y-value
mean(df$y, na.rm = TRUE)

library("ggplot2")

# create scatter plot with custom average line
ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_hline(yintercept = mean(df$y, na.rm=TRUE), color='blue', lty='dashed', lwd=2)
