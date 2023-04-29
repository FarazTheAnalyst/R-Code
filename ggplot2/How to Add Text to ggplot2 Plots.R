# Example 1: Add One Text Element to ggplot2
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 5, 7, 8, 10, 11),
                 y=c(3, 5, 7, 5, 8, 10, 14, 19))

# create scatter plot with one text element
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  annotate("text", x=6, y=10, label="hello")

# Example 2: Add Multiple Text Elements to ggplot2
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 5, 7, 8, 10, 11),
                 y=c(3, 5, 7, 5, 8, 10, 14, 19))

# create scatterplot with one text element 
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  annotate("text", x=6, y=10, label="hello") + 
  annotate("text", x=3, y=15, label="hello again")

# Example 3: Customize Text Elements in Plot
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 5, 7, 8, 10, 11),
                 y=c(3, 5, 7, 5, 8, 10, 14, 19))

# create scatterplot with custom text element 
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  annotate("text", x=6, y=10, label="bolditalic(hello)",
           col="blue", size=10, parse=TRUE)
