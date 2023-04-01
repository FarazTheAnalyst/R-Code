# Method 1: Create Data Frame with Random Values in Range
# make this example reproducible
set.seed(1)

# create data frame with 10 random numbers between 1 and 20
df <- as.data.frame(matrix(runif(n=10, min=1, max = 20), nrow=5))

# deifne column names
names(df) <- c("A", "B")

# view data frame
df

# Method 2: Create Data Frame with Random Integers in Range
# make this example reproducible 
df <- as.data.frame(matrix(round(runif(n=10, min=1, max=20), 0), nrow=5))

# define column names
names(df) <- c("A", "B")

# view data frame
df
