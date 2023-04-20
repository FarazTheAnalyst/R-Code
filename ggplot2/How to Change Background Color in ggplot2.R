# Example 1: Specify Custom Background Color
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 9, 12, 15),
                 y=c(13, 14, 14, 12, 17, 21, 22, 28, 30, 31))

# create scatterplot
p <- ggplot(df, aes(x=x, y=y)) + 
  geom_point()

# display scatterplot
p

# We can use the following code to change the background
# color of the panel along with the major and minor gridlines:
p + theme(panel.background = element_rect(fill = "lightblue", color = "purple"),
          panel.grid.major = element_rect(color = "red", linetype = "dotted"),
          panel.grid.minor = element_rect(color = "green", size = 2))

# Example 2: Use Built-in Theme to Change Background Color
p + theme_bw() #whtie background and grey gridlines
p + theme_minimal() #no background annotations
p + theme_classic() #axis lines but no gridlines
