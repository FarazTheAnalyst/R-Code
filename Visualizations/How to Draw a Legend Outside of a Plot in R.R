# create the data
df1 <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7), 
                 y=c(2, 7, 19, 26, 24, 29, 31))
df2 <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7),
                  y=c(4, 4, 7, 9, 12, 13, 8))

# add extra space to the right of the plot
par(mar=c(5, 4, 4, 8), xpd=TRUE)

# plot both data frames
plot(y~x, df1, pch=1, main="Scatterplot with multiple groups")
points(y~x, df2, pch=3)

# add legend outside of plot
legend("topright", inset = c(-0.2, 0), legend=c("df1", "df2"), pch=c(1, 3), title="Data")

# modify the legend location
# add extra spcae to the right of the plot
par(mar=c(5, 4, 4, 8), xpd=TRUE)

# plot both data frames
plot(y~x, df1, pch=1, main="Scatterplot with multiple groups")
points(y~x, df2, pch=3)

# add legend  outside of plot
legend("topright", inset = c(-0.3, 0), legend=c("df1", "df2"), pch = c(1, 3), title="Data")

#add extra space to the right of the plot
par(mar=c(5, 4, 4, 8), xpd=TRUE)

#plot both data frames
plot(y ~ x, df1, pch=1, main="Scatterplot with multiple groups")
points(y ~ x, df2, pch=3)

#add legend outside of plot
legend("topright", inset=c(-0.3, .5), legend=c("df1","df2"), pch=c(1,3), title="Data")
