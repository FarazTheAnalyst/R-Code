# Often you may want to use the apply() function to apply a 
# function to specific columns in a data frame in R.

# However, the apply() function first forces all columns in 
# a data frame to have the same object type before applying
# a function, which can sometimes have unintended consequences.

# Example: Apply Function to Specific Columns of Data Frame
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(19, 22, 15, NA, 14, 25, 25, 25),
                 rebounds=c(10, 6, 3, 7, 11, 13, 9, 12),
                 assists=c(4, 4, 3, 6, 7, 5, 10, 8))

# view data frame
df

# define function
my_function <- function(x) x*2 + 1

# apply funtion to specific columns
df[c("points", "rebounds")] <- lapply(df[c("points", "rebounds")], my_function)

# view updated data frame
df

df[c("points", "rebounds")] <- apply(df[c("points", "rebounds")], 2, my_function)

# view updated data frame
df
