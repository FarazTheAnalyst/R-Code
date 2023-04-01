# Example: Generate a Normal Distribution in R
# make this example reproducible
set.seed(1)

# view sample of 200 obs. that follos normal dist. with mean=10 and sd =3
data <- rnorm(200, mean=10, sd=3)

# view first 6 observation in sample
head(data)

# find mean of sample
mean(data)

# find standard deviation of sample
sd(data)

# we can also create a histogram to visualize the distribution of data value
hist(data, col = "skyblue")

# we can perform shapiro-wilk test to see if the dataset comes form a normal population
shapiro.test(data)
