# create data frame
df <- data.frame(x=c(1, 2, 3, 3, 5, 7, 9),
                 y=c(8, 14, 18, 25, 29, 33, 25))

# view data frame
df

# Example 1: Add Linear Trend Line
library("ggplot2")

ggplot(df, aes(x=x, y=y)) +
  geom_smooth(method = lm) #add linear trend line

# Example 2: Add Linear Trend Line & Specify Confidence Region
library("ggplot2")

ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method=lm, level=0.99)

# Example 3: Add Linear Trend Line & No Confidence Region
# Example 3: Add Linear Trend Line & No Confidence Region
# We can use the se=FALSE argument to hide the shaded confidence
# region around the trend line:
library("ggplot2")

ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method = lm, se=FALSE, col="red", size=2)

# Example 4: Add Curved Trend Line
library("ggplot2")

ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth()
