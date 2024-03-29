# create a sequence of 100 equally spaced numbers between -4 and 4
x <- seq(-4, 4, length=100)

# create a vector of values that shows the height of the probability diestribution
# for  each value in x
y <- dnorm(x)

# plot x and y as a scatterplot with connected lines(types = "l") and add
# an x-axis with custom labels()
plot(x, y, type = "l", lwd=2, axes=FALSE, xlab = "", ylab = "")
axis(1, at=-3:3, labels=c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s"))

# Normal Distribution with mean = 0 
# and standard deviation = 1 (less code)
curve(dnorm, -3.5, 3.5, lwd=2, axes=FALSE, xlab="", ylab = "")
axis(1, at=-3:3, labels=c("-1s", "-2s", "-3s", "mean", "1s", "2s", "3s"))

# Normal Distribution with customized mean and standard deviation

# define population mean and standard deviation
population_mean <- 50
population_sd <- 5

# define upper and lower bound
lower_bound <- population_mean - population_sd
upper_bound <- population_mean + population_sd

# create a sequence of 1000 x values on population mean and standard deviation
x <- seq(-4, 4, length=1000) * population_sd + population_mean

#create a vector of values that shows the height of the probability distribution
#for each value in x
y <- dnorm(x, population_mean, population_sd)

#plot normal distribution with customized x-axis labels
plot(x, y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
sd_axis_bounds = 5
axis_bounds <- seq(-sd_axis_bounds * population_sd + population_mean,
                   sd_axis_bounds * population_sd + population_mean,
                   by=population_sd)
axis(side = 1, at = axis_bounds, pos = 0)

# using ggplot2
# Normal Distribution with mean = 0 and standard deviation = 1
# install (if not already installed) and load ggplot2
if(!(require(ggplot2))){install.packages("ggplot2")}

# generate a normal distribution plot
ggplot(data.frame(x=c(-4, 4)), aes(x=x)) +
  stat_function(fun = dnorm)

# Normal Distribution using the 'mtcars' dataset

ggplot(mtcars, aes(x=mpg)) +
  stat_function(
    fun=dnorm,
    args = with(mtcars, c(mean=mean(mpg), sd=sd(mpg)))
  ) +
  scale_x_continuous("Miles per gallon")










































