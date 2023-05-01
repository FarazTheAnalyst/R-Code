# create  data frame
df <- data.frame(assists=c(1, 2, 2, 3, 5, 6, 7, 8, 8),
                 points=c(3, 6, 9, 14, 20, 23, 16, 19, 26))

# view data frame
df

# Example 1: Add Footnote in Bottom Right Corner
library("ggplot2")

# create scatterplot with footnote in bottom right corner
ggplot(df, aes(x=assists, y=points)) +
  geom_point(size=3) + 
  labs(caption="Here is a footnote")

# Example 2: Add Footnote in Bottom Left Corner
library("ggplot2")

# create scatterplot with footnote in bottom left corner
ggplot(df, aes(x=assists, y=points)) + 
  geom_point(size=3) + 
  labs(caption="Here is footnote") + 
  theme(plot.caption = element_text(hjust=0))
