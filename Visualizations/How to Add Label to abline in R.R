# add label to horizontal abline in R
# create data frame
df <- data.frame(x=c(1, 1,2,3, 4, 4, 7, 7, 8, 9),
                 y=c(13, 14, 17, 12, 23, 24, 25, 28, 32, 33))

# create scattterplot of x vs. y
plot(df$x, df$y, pch=19)

# add horizontal line at y=20
abline(h=20)

# add label to horizontal line
text(x=2, y=20.5, "This is a label")

# #create data frame
df <- data.frame(x=c(1, 1, 2, 3, 4, 4, 7, 7, 8, 9),
                 y=c(13, 14, 17, 12, 23, 24, 25, 28, 32, 33))

#create scatterplot of x vs. y
plot(df$x, df$y, pch=19)

#add horizontal line at y=20
abline(h=20)

# add label to horizontal line (with blue color and double the font size)
text(x=3, y=20.7, "This is a label", col="blue", cex=2)

# add label to vertical abline in R
#create data frame
df <- data.frame(x=c(1, 1, 2, 3, 4, 4, 7, 7, 8, 9),
                 y=c(13, 14, 17, 12, 23, 24, 25, 28, 32, 33))

#create scatterplot of x vs. y
plot(df$x, df$y, pch=19)

#add horizontal line at y=20
abline(v=6)

# add label to vertical line
text(x=5.8, y=20, srt=90, "This is a label")
















