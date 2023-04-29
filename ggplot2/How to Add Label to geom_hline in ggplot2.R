# Example 1: Add Label to geom_hline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with horizontal line at y=20
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = 20) + 
  annotate("text", x=9, y=20.5, label="Some Text")

# Example 2: Add Customized Label to geom_hline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with horizontal line at y=20
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = 20) + 
  annotate("text", x=10, y=21.5, label="Some text", size=15, color="blue")

# Example 3: Add Multiple Labels to geom_hline
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot with horizontal line at y=10
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  geom_hline(yintercept = 20) + 
  annotate("text", x=10, y=19, label="Some Text", size=15, color="blue") +
  annotate("text", x=10, y=21, label="More text", size=13, color="red")























