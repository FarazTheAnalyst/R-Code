 # Example: Change Line Colors in ggplot2
# create data frame
df <- data.frame(store=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 week=c(1, 2, 3, 1, 2, 3, 1, 2, 3),
                 sales=c(9, 12, 15, 7, 9, 14, 10, 16, 19))

# view data frame
df

library("ggplot2")

# create line plot
ggplot(df, aes(x=week, y=sales, group=store, color=store)) +
  geom_line(size=2)

# however, you can use the scale_color_manual() function to specify your own for 
# lines
library("ggplot2")

# create line plot
ggplot(df, aes(x=week, y=sales, group=store, color=store)) +
  geom_line(size=2) +
  scale_color_manual(values=c("orange", "pink", "red"))

library("ggplot2")

# create line plot
# you can also use hex color codes to specify the colors
ggplot(df, aes(x=week, y=sales, group=store, color=store)) +
  geom_line(size=2) +
  scale_color_manual(values=c("#063970", "#A69943", "#7843A6"))
