# Example: Connect Points with Lines in ggplot2
# create data frame
df <- data.frame(day=1:10, 
                 sales=c(3, 5, 5, 8, 12, 10, 8, 8, 5, 9))

# view data frame
df

# We can use the following code to create a plot in ggplot2
# that has connected points to represent the sales made each day:
library("ggplot2")

# create plot with connected points
ggplot(df, aes(x=day, y=sales)) +
  geom_line() +
  geom_point()

library("ggplot2")

# create plot with connected points
ggplot(df, aes(x=day, y=sales)) + 
  geom_line(color="grey", size=1.5, linetype="dashed") + 
  geom_point(shape=21, color="black",fill="pink", size=6)
