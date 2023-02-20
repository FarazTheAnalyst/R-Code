# point estimate of population mean
# define data
data <- c(8, 8, 9, 12, 13, 13, 14, 15, 19, 22, 23, 24)

# calculate sample mean
mean(data, na.rm = TRUE)

# find sample size, samle mean, and sample standard deviation
n <- lenght(data)

# view length
n

xbar <- mean(data, na.rm = TRUE)
s <- sd(data)

# view sd
s

# calculate margin of error
margin <- qt(0.975, df=n-1)*s/sqrt(n)

# calculate lower and upper bounds of confidence interval
low <- xbar - margin
low
high <- xbar + margin
high

# point estimate of population proporion
#define data
data <- c('Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'Y',
          'N', 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N')

# find total sample size
n <- length(data)

# find number who responded "Yes"
k <- sum(data == "Y")

# find sample proportion
p <- k/n
p

# find total sample size
n <- length(data)

# find number who responded "Yes"
k <- sum(data == "Y")

# find sample porporion
p <- k/n
p

margin <- qnorm(0.975)*sqrt(p*(1-p)/n)
# calculate lower an upper bounds of confidence interval
low <- p - margin
low

high <- p + margin
high











