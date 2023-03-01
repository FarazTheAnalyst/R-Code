# change legend size in base R plot
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(4, 6, 7, 12, 6, 8),
                 group=c(1, 1, 1, 2, 2, 2))

# create scatter plot
plot(df$x, df$y, col=df$group, pch=16)

# add legend in top right corner
legend("topright", legend = c("First", "Second"),
       col=1:2, pch = 16)

# increase legend size
# create scatter plot
plot(df$x, df$y, col=df$group, pch=16)

# add legend in top right corner with increased size
legend("topright", legend = c("First", "Second"), col=1:2, pch=16, cex = 2)

# create scatter plot
plot(df$x, df$y, col=df$group, pch=16)

# add legend in top right corner with decreased size
legend("topright", legend = c("First", "Second"),
       col =1:2, pch=16, cex.75)

# create scatter plot
plot(df$x, df$y, col=df$group, pch=16)

# add legend in top right corner with increased point point size
legend("topright", legend = c("First", "Second"),
       col = 1:2, pch=16, pt.cex = 2)
























