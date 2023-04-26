# create data frame
df <- data.frame(x=c(4, 4, 4, 4, 6, 6, 6, 6, 8, 8, 8, 8),
                 y=c(3, 3, 3, 3, 7, 7, 7, 7, 9, 9, 9, 9))

# view data frame
df

# Example 1: Create Scatter Plot without Jitter
library("ggplot2")

# create scatterplot
ggplot(df, aes(x=x, y=y)) +
  geom_point()

# Example 2: Create Scatter Plot with Default Jitter
library("ggplot2")

# create scatter plot with jittered points
ggplot(df, aes(x=x, y=y)) +
  geom_jitter()

# Example 3: Create Scatter Plot with Custom Jitter
library("ggplot2")

# create scatter plot with jittered points
ggplot(df, aes(x=x, y=y)) +
  geom_jitter(width = 0.2, height=0.2)

# create scatter plot with jittered points with different width and heights
ggplot(df, aes(x=x, y=y)) +
  geom_jitter(width = 0.1, height = 0.1)S

              