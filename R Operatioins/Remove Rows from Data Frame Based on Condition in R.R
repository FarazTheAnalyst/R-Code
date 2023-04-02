# create data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                 b=c(7, 8, 8, 7, 13, 16),
                 c=c(11, 13, 13, 18, 19, 22),
                 d=c(12, 16, 18, 22, 29, 38))

# view data frame
df

# Example 1: Remove Rows Equal to Some Value
# remove rows where column "c" is equal to 13
new_df <- subset(df, c!=13)

# view updated data frame
new_df

# Example 2: Remove Rows Equal to One of Several Values
# remove rows whree value in column b is equal to 7 or 8
new_df <- subset(df, !(b %in% c(7, 8)))

# view updated data frame
new_df

# Example 3: Remove Rows Based on Multiple Conditions
# remove rows where value in column b is 7 and value in column d is 38
new_df <- subset(df, b != 7 & d != 38)

# view updated data frame
new_df
