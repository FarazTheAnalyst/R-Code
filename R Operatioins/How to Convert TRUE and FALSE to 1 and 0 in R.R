# Example: Convert TRUE and FALSE to 1 and 0 in R
# create data frame
df <- data.frame(points=c(5, 7, 8, 0, 12, 14),
                 assists=c(0, 2, 2, 4, 4, 3),
                 all_star=c(TRUE, TRUE, FALSE, FALSE, FALSE, TRUE))

# view data frame
df

# We can use the following basic syntax to convert the TRUE and FALSE
# values in the all_star column to 1 and 0 values:
# convert all_star column to 1s and 0s
df$all_star <- as.integer(as.logical(df$all_star))

# view updated data frame
df

# convert 1s and 0s back to TRUE and FALSE in all_star column
df$all_star <- as.logical(df$all_star)

# view updated data frame
df
