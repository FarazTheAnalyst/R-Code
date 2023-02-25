# plot a table in R
# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7),
                 y=c(3, 4, 4, 8, 6, 10, 14))

# view data frame
df

# creating a scatter plot to visualizing the values in the data frame
# and also plot a table that shows the raw values
library("gridExtra")
library("ggplot2")

# define scatterplot
my_plot <- ggplot(df, aes(x=x, y=y)) +
  geom_point()

# define table
my_table <- tableGrob(df)

# create scatterplot and add table underneath it
grid.arrange(my_plot, my_table)

# define scatterplot
my_plot <- ggplot(df, aes(x=x, y=y))+
  geom_point()

# define table
my_table <- tableGrob(df)
# create scatterplot and add table next to it
grid.arrange(arrangeGrob(my_plot, my_table, ncol=2))
