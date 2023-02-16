# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7),
                 y=c(3, 4, 4, 8, 6, 10, 14))

# view data frame
df

# add one text element outside of plot
# create scatte rplot
plot(df$x, df$y)

# add text above plot
mtext("Here is some text")

# add  multiple text elements outside of plot
# create scatter plot
plot(df$x, df$y)

# add text on each side of plot
mtext("text on the bottom", side=1)
mtext("text on the left", side=2)
mtext("text on the top", side = 3)
mtext("text on the right", side = 4)

# add customized text element outside of plot
# create scatter plot
plot(df$x, df$y)

# add customized text inside top of plot
mtext("Text on the top", side=3, line = -3, cex = 3, col = "red")












