# Example: Create Smooth Lines in ggplot2
df <- data.frame(x=c(1, 2, 4, 5, 7, 9, 13, 14, 15, 17, 18, 20),
                 y=c(34, 35, 36, 23, 37, 38, 49, 45, 48, 51, 53, 55))

library("ggplot2")

ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  geom_smooth()

# By default, the geom_smooth() function uses a loess method to fit
# the line to the dataset, but we can specify a different method such
# as lm to fit a straight line to the dataset instead:
ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method="lm")

# We can also hide the standard error bands by specifying se=FALSE:
ggplot(df, aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method="lm", se=FALSE)

# You can also quickly change the size and color of the line by
# using the size and col arguments:
ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  geom_smooth(method = "lm", se=FALSE, col="red", size=2)
