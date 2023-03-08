# Example: One Sample T-Test in R
# Suppose a botanist wants to know if the mean height of a certain species 
# of plant is equal to 15 inches.

# create vector to hold plant heights
my_data <- c(14, 14, 16, 13, 12, 17, 15, 14, 15, 13, 15, 14)

# perform one sample t-test
t.test(my_data, mu=15)
