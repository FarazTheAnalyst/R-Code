# Example: Create Plot in ggplot2 Using Multiple Data Frames
# create  first data frame
df1 <- data.frame(day=1:8,
                  sales=c(6, 8, 9, 14, 13, 13, 7, 10))

df1

# create second data frame
df2 <- data.frame(day=1:8,
                  sales=c(2, 3, 3, 5, 7, 6, 5, 9))

df2

library("ggplot2")

# create line plot using multiple data frame
ggplot() + 
  geom_line(data=df1, aes(x=day, y=sales), color="steelblue") + 
  geom_line(data=df2, aes(x=day, y=sales), color="coral1")

library("ggplot2")

# create scatter plot using multiple data frames
ggplot() +
  geom_point(data=df1, aes(x=day, y=sales), color="steelblue") + 
  geom_point(data = df2, aes(x=day, y=sales), color="coral2")
