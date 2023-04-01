# Example 1: Use runif() to Generate Random Values
# make this example reproducible
set.seed(5)

# generate 10 random values from uniform distribution
runif(n=10, min=50, max=100)

# Example 2: Use runif() to Generate Random Values Rounded to Decimal Place
# make this example reproducible
set.seed(5)

# generate 10 random values from uniform distribution rounded to one decimal place
round(runif(n=10, min=50, max=100), 1)

# Example 3: Use runif() to Generate Random Values Rounded to Whole Numbers
# make this example reproducible
set.seed(5)

# generate 10 random values form uniform distribution rounded to whole number
round(runif(n=10, min = 50, max=100), 0)

# Example 4: Use runif() to Create Histogram of Uniform Distribution
# make this example reproducible 
set.seed(5)

# generate 1,000 random values from uniform distribution
values <- runif(n=1000, min=50, max=100)

# genereate histogram to visualize these values
hist(values)
