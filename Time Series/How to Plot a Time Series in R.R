# Often you may want to plot a time series in R to visualize
# how the values of the time series are changing over time.

# Basic Time series plot in R
# create dataset
df <- data.frame(date = as.Date("2021-01-01") - 0:99,
                 sales = runif(100, 10, 500) + seq(50, 149)^2)

# view first six rows 
head(df)

# load ggplot2
library("ggplot2")

# create time series plot
p <- ggplot(df, aes(x=date, y=sales)) +
  geom_line()

# display itme series plot
p

# format the dates on the X-axis
p + scale_x_date(date_labels = "%b %Y")

# adding date_breaks argument 2 week break
p + scale_x_date(date_breaks = "2 weeks")

# angle the x-axis labels by using the following argument:
p + theme(axis.text.x = element_text(angle=50, hjust=1))

# change the theme, the axes labels, and the title to
# make the time series plot more visually appealing
p <- ggplot(df, aes(x=date, y=sales)) +
  geom_line(color="turquoise4") +
  theme_minimal() +
  labs(x="", y="Sales", title = "Total Sales (Past 100 Days)") +
  theme(plot.title = element_text(hjust = 0.5, size=20, face="bold"))

# display plot
p


























