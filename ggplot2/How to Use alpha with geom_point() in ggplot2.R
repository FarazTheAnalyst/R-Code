# make this example reproducible
set.seed(1)

# create data frame with 5000 rows
df <- data.frame(x=runif(n=5000, min=1, max=100))

df$y = df$x*3 + runif(5000)*df$x^2

# view head of data frame
head(df)

# Example 1: Using alpha = 1 in geom_point()
# create scatterplot with default alpha value
library("ggplot2")

ggplot(df, aes(x=x, y=y)) + 
  geom_point()

# Example 2: Using alpha = 0 in geom_point()
library("ggplot2")

# create scatterplot with alpha value of 0
ggplot(df, aes(x=x, y=y)) + 
  geom_point(alpha=0)

# Example 3: Using alpha = 0.1 in geom_point()
library("ggplot2")

# create scatterplot with alpha value of 0.1
ggplot(df, aes(x=x, y=y)) + 
  geom_point(alpha=0.1)





















