# make this example reproducble
set.seed(0)

# define data
data <- rnorm(1000)

# create histogram
hist_data <- hist(data)

# define x and y values to use for normal curve
x_values <- seq(min(data), max(data), length = 100)
x_values

y_values <- dnorm(x_values, mean=mean(data), sd=sd(data))
y_values

y_values <- y_values * diff(hist_data$mids[1:2]) * length(data)

# overlay normal curve on histogram
lines(x_values, y_values, lwd = 2)

# overlay normal curve with custom aesthetics
lines(x_values, y_values, col="red", lwd=5, lty="dashed")

# overlay normal curve on histogram in ggplot2
library("ggplot2")

# make this example reproducble 
set.seed(0)

# define data 
data <- data.frame(x=rnorm(1000))

# create histogram and overlay normal curve
ggplot(data, aes(x)) +
  geom_histogram(aes(y= ..density..), fill = "lightgray", col="black") +
  stat_function(fun=dnorm, args = list(mean=mean(data$x), sd=sd(data$x)),
                col="red", lwd=2, lty="dashed")
























