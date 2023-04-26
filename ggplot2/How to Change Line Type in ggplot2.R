# Example 1: Create Plot with Default Line Type
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 8, 9),
                 y=c(5, 8, 10, 14, 13, 19))

# create line plot
ggplot(df, aes(x=x, y=y)) +
  geom_line()

# Example 2: Create Plot with Custom Line Type
# the followeing code sho how to create a line plot in ggplot2 using dashded
# (linetype=2) for the line type
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 8, 9),
                 y=c(5, 8, 10, 14, 13, 19))

# create line plot with custom line type
ggplot(df, aes(x=x, y=y)) +
  geom_line(linetype=2)

# Example 3: Create Plot with Line Type Based on Variable
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 10, 1, 10, 1, 10),
                 y=c(5, 8, 10, 14, 13, 19),
                 group=c('A', 'A', 'B', 'B', 'C', 'C'))

# create line plot
ggplot(df, aes(x=x, y=y, group=group)) +
  geom_line(aes(linetype=group, color=group), size=1.5)












