# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(5, 8, 12, 16, 25, 33))

# create scatterplot with all default font sizes
plot(df$x, df$y, main = "Title", sub = "Subtitle")

# create scatterplot with increased font size of title
plot(df$x, df$y, main="Title", sub = "Subtitle",
     cex.main=2)

# change font size of subtitle
# create scatterplot with increased font size of subtitle
plot(df$x, df$y, main="Title", sub = "Subtitle", 
     cex.sub=2)

# change fong size of axis labels
# create scatterplot with increased font size of axis labels
plot(df$x, df$y, main="Title", sub="Subtitle", 
     cex.lab=2)

# change font size of axis text
# create scatterplot with increased font size of axis text
plot(df$x, df$y, main="Title", sub="Subtitle", 
     cex.axis=2)
