library("ggplot2")

# create data frame
df <- data.frame(team=rep(c('A', 'B'), each=5),
                 assists=c(1, 3, 3, 4, 5, 7, 7, 9, 9, 10),
                 points=c(4, 8, 12, 10, 18, 25, 20, 28, 33, 35))

# create data frame
df <- data.frame(team=rep(c('A', 'B'), each=5),
                 assists=c(1, 3, 3, 4, 5, 7, 7, 9, 9, 10),
                 points=c(4, 8, 12, 10, 18, 25, 20, 28, 33, 35))

# create scatter plot
ggplot(df, aes(x=assists, y=points)) + 
  geom_point(aes(color=team), size=3)

# Example 1: Use ggsave() to Save Plot with Default Settings
# We can use the following syntax with ggsave() to save this scatter
# plot to a PDF file called my_plot.pdf with all of the default settings:
library("ggplot2")

# save scatter plot as PDF file
ggsave("my_plot.pdf")

# Example 2: Use ggsave() to Save Plot with Custom Settings
library("ggplot2")

# save scatter plot as PDF file with specific diamentions
ggsave("my_plot2.pdf", width=3, height=6, units = "in")
ggsave("my_plot2.png", width = 4, height=8, units = "in")
ggsave("my_plot2.jpeg", width = 10, height = 15, units = "cm")
