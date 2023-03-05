# make this example reproducible
set.seed(0)

# create random variable with sample size of 1000 that is uniformally distributed
data <- runif(n=1000, min = 2, max = 6)

# create histogram to visualize distribution of turtle shell widths
hist(data, col="steelblue", main = "Histograms of Trurtle Shell Widths")

# create empty vector to hold sample means
sample5 <- c()

# take 1,000 random samples of size n=5
n=1000
for (i in 1:n) {
  sample5[i] = mean(sample(data, 5, replace = TRUE))
}

# calculate mean and standard deviation of sample means
mean(sample5)

sd(sample5)

# create histogram to visualize sampling distribution of sample means
hist(sample5, col="steelblue", xlab = "Turtel Shell Width", main = "Sample size =5")

# create empty vector to hold sample means
sample30 <- c()

# take 1,000 random samples of size n=30
n=100
for (i in 1:n) {
  sample30[i] = mean(sample(data, 30, replace="TRUE"))
  
}

# calculate mean and standard deviation of sample means
mean(sample30)

sd(sample30)

# create histogram to visualize sampling distribution of sample means
hist(sample30, col="lightblue", xlab="Turtle Shell Width", main = "Sample size = 30")


















