# Example 1: Add Label to geom_vline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with vertical line at x=10
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = 10) + 
  annotate("text", x=9.7, y=20, label="some text", angle=90)

# Example 2: Add Customized Label to geom_vline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with vertical line at x=10
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = 10) + 
  annotate("text", x=9, y=20, label="some text", angle=90, size=15, color="blue")

# Example 3: Add Multiple Labels to geom_vline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with vertical line at x=10
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_vline(xintercept = 10) + 
  annotate("text", x=9, y=20, label="some text", angle=90, size=15, color="blue") + 
  annotate("text", x=11, y=20, label="more text", angle=90, size=13, color="red")


















