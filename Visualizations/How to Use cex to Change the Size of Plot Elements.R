# use cex to change size of plot sympols
# create data frame
df <- data.frame(x=c(1, 2, 2, 4, 5, 3, 5, 8, 12, 10),
                 y=c(5, 9, 12, 14, 14, 13, 10, 6, 15, 18))

# view data frame
df

# create scatterplot of x vs. y
plot(df$x, df$y, pch=19, main="Scatterplot of x vs. y")

# create scatterplot with custom symbol and text sizes
plot(df$x, df$y, pch=19, main = "Scatterplot of x vs. y", 
     cex=2, cex.main=3, cex.lab=1.5, cex.axis=2)
