# Example 1: Append Values to Empty Vector
# define empty vector
data <- c()

# use for loop to add integers from 1 to 10 to vector
for (i in 1:10) {
  data <- c(data, i)
}

# view resulting vector
data

# Example 2: Perform Operation & Append Values to Vector
# define empty vector
data <- c()

# use for loop to add square root of integers form 1 to 10 to vector
for(i in 1:10) {
  data <- c(data, sqrt(i))
}

# view resulting vector
data

# Example 3: Append Values to Existing Vector
# define vector of data
data <- c(4, 5, 12)

# define new data to add
new <- c(16, 16, 17, 18)

# use for loop to append new data to vector
for(i in 1:length(new)) {
  data <- c(data, new[i])
}

# view resulting vector
data

# Example 4: Append a Single Value to Vector
# define vector of data
data <- c(4, 5, 12)

# append the value "19" to the end of the vector
new <- c(data, 19)

# display resulting vector
new











