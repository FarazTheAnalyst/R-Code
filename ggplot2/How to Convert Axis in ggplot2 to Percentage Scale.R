# Example: Convert Axis in ggplot2 to Percentage Scale
# create data frame
df <- data.frame(store=c("A", "B", "C", "D"),
                 returns=c(.14, .08, .22, .11))

# view data frame
df

library("ggplot2")

# create bar chart
ggplot(data = df, aes(x=store, y=returns)) + 
  geom_bar(stat="identity")

library("ggplot2")

# create bar chart with percentages on y-axis
ggplot(data=df, aes(x=store, y=returns)) + 
  geom_bar(stat="identity") +
  scale_y_continuous(labels=scales::percent)

# By default, one decimal place is shown. However, we can use the
# accuracy argument to drop the decimal place from the y-axis:
library("ggplot2")

# create bar chart with percentages on y-axis
ggplot(data = df, aes(x=store, y=returns)) + 
  geom_bar(stat="identity") + 
  scale_y_continuous(labels=scales::percent_format(accuracy = 1))
