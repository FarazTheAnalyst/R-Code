# Example: Add Points to an Existing Plot in R
# create data frame
df1 <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  y=c(4, 5, 5, 4, 6, 8, 12, 15, 19, 22)) 

# create scatterplot
plot(df1$x, df1$y, col = "blue", pch=16)



# create second data frame
df2 <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                  y=c(14, 12, 9, 9, 8, 5, 4, 5, 3, 2))

# add points from df2 to the existing scatter plot
points(df2$x, df2$y, col="red", pch=16)

# add legend to plot
legend(x=1, y=22, legend=c("df1", "df2"), fill=c("blue", "red"))
