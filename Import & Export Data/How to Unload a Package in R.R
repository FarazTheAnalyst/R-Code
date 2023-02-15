library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8),
                 y=c(4, 9, 14, 29, 24, 23, 29, 31))

# Create scatterplot
ggplot(df, aes(x=x, y=y, color = "gold")) +
  geom_point()

# unload ggplot2 from current R environment
unloadNamespace("ggplot2")

df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8),
                 y=c(4, 9, 14, 29, 24, 23, 29, 31))

# Create scatterplot and this will through error
ggplot(df, aes(x=x, y=y)) +
  geom_point(color = "blue")
