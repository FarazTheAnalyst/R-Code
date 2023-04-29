# create data frame
df <- data.frame(team = c('B', 'B', 'B', 'A', 'A', 'C'),
                 points = c(12, 28, 19, 22, 32, 45),
                 rebounds = c(5, 7, 7, 12, 11, 4))

# view structure of data frame
str(df)

# Example 1: Order the Bars Based on a Specific Factor Order
library("ggplot2")

ggplot(df, aes(x=team)) + 
  geom_bar()

# specify factor level order
df$team = factor(df$team, levels = c("C", "A", "B"))

# create  bar chart again
ggplot(df, aes(x=team)) + 
  geom_bar()

# Example 2: Order the Bars Based on Numerical Value
# We can also order the bars based on numerical values. For example,
# the following code shows how to order the bars from largest to
# smallest frequency using the reorder() function:
library("ggplot2")

ggplot(df, aes(x=reorder(team, team, function(x)-length(x)))) + 
  geom_bar()

# We can also order the bars from smallest to largest frequency
# by taking out the minus sign in the function() call within
# reorder() function:
library("ggplot2")

ggplot(df, aes(x=reorder(team, team, function(x) length(x)))) +
  geom_bar()
