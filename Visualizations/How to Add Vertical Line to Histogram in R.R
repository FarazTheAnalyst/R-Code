# add solid vertical line at specific location
# make this example reproducible
set.seed(1)

# create data
data <- rnorm(n=1000, mean=5, sd=2)

# create histogram to visualize distribution of data
hist(data)

# add vertical line at x=2
abline(v=2)

# add customized vertical line at specific location
# make this example reproducible
set.seed(1)

# create data
data <- rnorm(n=1000, mean=5, sd=2)

# create histogram to visualize distribution of data
hist(data)

# add vertical line at mean value
abline(v=mean(data), col="red", lwd=3, lty="dashed")

# add multiple customized vertical lines
# make this example reproducible
set.seed(1)

# create data
data <- rnorm(n=1000, mean=5, sd=2)

# create histogram to visualize distribution of data
hist(data)

# add vertical lines at 1st and third quartiles
abline(v=quantile(data, .25), col="red", lwd=3)
abline(v=quantile(data, .75), col="blue", lwd=3)






















