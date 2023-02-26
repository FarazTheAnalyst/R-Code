# histogram with different colors in base R
# create data frame
df <- data.frame(x=c(12, 14, 14, 15, 15, 17, 19, 22, 23, 23, 24))

# create histogram
hist(df$x)

# define histogram break points
hist_breaks <- hist(df$x)$breaks
hist_breaks

# define colors to use in histogram based on break points
color_list <- rep("red", length(hist_breaks))
color_list

color_list[hist_breaks < 20] <- "blue"
color_list[hist_breaks < 16] <- "purple"

# create histogram with custom colors
hist(df$x, col = color_list)
color_list

# histogram with different colors in ggplot2
library("ggplot2")
# create data frame
df <- data.frame(x=c(12, 14, 14, 15, 15, 17, 19, 22, 23, 23, 24))
df

# create grouping variable
df$group <-  ifelse(df$x < 16, "C", ifelse(df$x < 20, "B", "A"))

# view data frame
df

# create histograme with custom colors
ggplot(df, aes(x, fill=group)) +
  geom_histogram(bins = 6, color="black") +
  scale_fill_manual(values = c("A" = "red", 
                               "B" = "blue", 
                               "C" = "purple"))

















