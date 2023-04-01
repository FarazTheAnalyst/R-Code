# create vector of data
data <- c(1, 3, 5, 6, 7, 8, 10, 11, 12, 14)

# select random sample of 5 elements without replacement
sample(x=data, size = 5)

# create vector of data
data <- c(1, 3, 5, 6, 7, 8, 10, 11, 12, 14)

# select random sample of 5 elements with replacement
sample(x=data, size = 5, replace = TRUE)

# Example 2: Random Sample from a Data Frame
# create data frame
df <- data.frame(x=c(3, 5, 6, 6, 8, 12, 14),
                 y=c(12, 6, 4, 23, 25, 8, 9),
                 z=c(2, 7, 8, 8, 15, 17, 29))

# view data frame
df

# select random sample of three rows from data frame
rand_df <- df[sample(nrow(df), size = 3), ]

# display randomly selected rows
rand_df

# In order to replicate the results of some analysis, be sure
# to use set.seed(some number) so that the sample() function
# chooses the same random sample each time
# make this example reproducible
set.seed(23)

# create data frame
df <- data.frame(x=c(3, 5, 6, 6, 8, 12, 14),
                 y=c(12, 6, 4, 23, 25, 8, 9),
                 z=c(2, 7, 8, 8, 15, 17, 29))

# select random sample of three rows from data frame
rand_df <- df[sample(nrow(df), size = 3), ]

# display randomly selected rows
rand_df



















