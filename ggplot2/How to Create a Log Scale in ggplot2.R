# Example 1: Log Scale Using scale_y_continuous()
library("ggplot2")

df <- data.frame(x=c(2, 5, 6, 7, 9, 13, 14, 16, 18),
                 y=c(1400, 1700, 2300, 2500, 2800, 2900, 3400, 3900, 11000))

# create scatterplot with log scale on y-axis
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  scale_y_continuous(trans="log10")

# Example 2: Log Scale Using coord_trans()
library(("ggplot2"))

# create data frame
df <- data.frame(x=c(2, 5, 6, 7, 9, 13, 14, 16, 18),
                 y=c(1400, 1700, 2300, 2500, 2800, 2900, 3400, 3900, 11000))

# create scatterplot with log scale on y-axis
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  coord_trans(y="log10")

# Example 3: Custom Log Scale Labels
library("ggplot2")
library("scales")

# create data frame
df <- data.frame(x=c(2, 5, 6, 7, 9, 13, 14, 16, 18),
                 y=c(1400, 1700, 2300, 2500, 2800, 2900, 3400, 3900, 11000))

# create scatterplot with log scale on y-axis and custom labels
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  scale_y_continuous(trans="log10",
                     breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))
