# Example: Shade an Area in ggplot2
# create data frame
df <- data.frame(points=c(3, 3, 5, 6, 7, 8, 9, 9, 8, 5),
                 rebounds=c(2, 6, 5, 5, 8, 5, 9, 9, 8, 6))

# view data frame
df

library("ggplot2")

# create scatter plot with shaded area
ggplot(df, aes(x=points, y=rebounds)) +
  geom_point() + 
  annotate("rect", xmin=3, xmax=5, ymin = 3, ymax = 7, alpha=.2, fill="red")

library("ggplot2")

# create scatterplot with shaded area
ggplot(df, aes(x=points, y=rebounds)) + 
  geom_point() + 
  annotate("rect", xmin=3, xmax = 5, ymin=3, ymax=7, alpha=.5, fill="red")

library("ggplot2")

# create scatterplot with two shaded areas
ggplot(df, aes(x=points, y=rebounds)) + 
  geom_point() + 
  annotate("rect", xmin=3, xmax=5, ymin=3, ymax=7, alpha=.5, fill="red") +
  annotate("rect", xmin = 6, xmax=9, ymin=3, ymax = 5, alpha=.2, fill="blue")
