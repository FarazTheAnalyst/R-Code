# Example: Change X-Axis Labels in ggplot2
# create data frame
df <- data.frame(team=c('Mavs', 'Heat', 'Nets', 'Lakers'),
                 points=c(100, 122, 104, 109))

# view data frame
df

library("ggplot2")

# create bar plot
ggplot(df, aes(x=team, y=points)) + 
  geom_col()

# To change the x-axis labels to something different, we can use
# the scale_x_discrete() function:
library("ggplot2")

# create bar plot with specific axis order
ggplot(df, aes(x=team, y=points)) + 
  geom_col() + 
  scale_x_discrete(labels=c("label1", "label2", "label3", "label4"))

# You can also specify the labels in a vector outside of the
# scale_discrete() function if you'd like:
library("ggpllot2")

# specify labels for plot
my_labels <- c("label1", "label2", "label3", "label4")

# create bar plot with specific axis order
ggplot(df, aes(x=team, y=points)) + 
  geom_col() + 
  scale_x_discrete(labels=my_labels)
