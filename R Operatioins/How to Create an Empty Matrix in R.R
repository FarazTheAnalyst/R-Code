# Example 1: Create Empty Matrix of Specific Size
# create empty matrix with 10 rows and 3 columns
empty_matrix <- matrix(, nrow = 10, ncol=3)

# Example 1: Create Empty Matrix of Specific Size
empty_matrix

# class
class(empty_matrix)

# Example 1: Create Empty Matrix of Specific Size
# create empty list
my_list <- list()

# add data using for loop
for(i in 1:4) {
  my_list[[i]] <- rnorm(10)
}

# column bind values into a matrix
my_matrix = do.call(cbind, my_list)
