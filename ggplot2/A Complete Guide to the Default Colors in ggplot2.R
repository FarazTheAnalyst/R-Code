library("ggplot2")

# create data frame
df <- data.frame(team=c("A", "B", "C"),
                 points=c(22, 28, 15))

# create bar plot using df
ggplot(df, aes(x=team, y=points, fill=team)) +
  geom_bar(stat = "identity")

# By default, ggplot2 chooses to use a specific shade of red, green,
# and blue for the bars.

library("scales")

# extract hex color codes for a plot with three elements in ggplot2
hex <- hue_pal()(3)

# display hex color codes
hex

library("scales")

# extract hex color codes for a plot with three elements in ggplot2
hex <- hue_pal()(3)

# overlay hex color codes on actual colors
show_col(hex)

library("scales")

# set margins of plot area
par(mai = c(0.1, 0, 0.1, 0), bg="grey85")

# create plot with ggplot2 default colors from 1 to 8
gc.grid <- layout(matrix(1:8, nrow=8))
for(i in 1:8){
  gc.ramp <- hue_pal()(i)
  plot(c(0, 8), c(0, 1),
       type = "n",
       bty="n",
       xaxt="n",
       yaxt="n", xlab = "", ylab="")
  for (j in 1:i) {
    rect(j - 1, j - 0.25, 1, col = gc.ramp[j])
  }
}

library("scales")

# display ggplot2 default hex color codes from 1 to 8
for(i in 1:8) {
  print(hue_pal()(i))
}











