# add one text element to plot
# create data frame with values to plot
df <- data.frame(x=c(1, 4, 7, 8, 8, 10),
                 y=c(4, 9, 16, 14, 12, 20))

# create scatterplot
plot(df$x, df$y)

# add text element at (5, 18)
text(x=5, y=18, "this is my text")

# add multiple text elements to plot
# create data frame with values to plot
df <- data.frame(x=c(1, 4, 7, 8, 8, 10),
                 y=c(4, 9, 16, 14, 12, 20))

# create scatter plot
plot(df$x, df$y)

# add text elements
# add text elements
text(x=5, y=18, "first text")
text(x=5, y=10, "second text")
text(x=5, y=5, "third text")

# customize text elements in plot
# create data frame with values to plot
df <- data.frame(x=c(1, 4, 7, 8, 8, 10),
                 y=c(4, 9, 16, 14, 12, 20))

# create sctatterplot
plot(df$x, df$y)

# add text elements with custom appearance
text(x=5, y=18, "first text", col="gold", cex=1)
text(x=5, y=10, "second text", col="purple", cex=2)
text(x=5, y=5, "third text", col="green", cex=3)

# add text labels to each point in plot
# create data frame with values to plot
df <- data.frame(teams=c('A', 'B', 'C', 'D', 'E', 'F'),
                 x=c(1, 4, 7, 8, 8, 10),
                 y=c(4, 9, 16, 14, 12, 20))

# create scatterplot
plot(df$x, df$y)

# add text label to each point in plot
text(df$x, df$y, labels = df$teams, pos=4)



