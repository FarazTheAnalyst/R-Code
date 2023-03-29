# Example: Compare Two Columns in R
# create data frame
df <- data.frame(A_points=c(1, 3, 3, 3, 5),
                 B_points=c(4, 5, 2, 3, 2))

# view data frame
df

# compare A_points and B_points and ouput to new column titled winner
df$winner <- ifelse(df$A_points > df$B_points, "A",
                    ifelse(df$A_points < df$B_points, "B", "Tie"))

# view data frame
df

# How to Compare Strings in R
