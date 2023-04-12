# This error occurs when you attempt to replace a certain number
# of items in a vector or data frame column (suppose 3 items)
# with a different number of items (suppose 6 items).

# how ro reproduce the error
# create data frame
df <- data.frame(a=c(3, NA, 7, NA, NA, 14),
                 b=c(4, 4, 5, 12, 13, 18))

# view data frame
df

# attempt to replace missing values in first column with values in second column
df$a[is.na(df$a)] <- df$b

# how to fix the error
# replace missing values in column "a' with corresponding values in column "b"

# create data frame
df <- data.frame(a=c(3, NA, 7, NA, NA, 14),
                 b=c(4, 4, 5, 12, 13, 18))
df$a <- ifelse(is.na(df$a), df$b, df$a)

# view updated data frame
df

# replace all missing values in column a with zero
# create data frame
df <- data.frame(a=c(3, NA, 7, NA, NA, 14),
                 b=c(4, 4, 5, 12, 13, 18))

df$a[is.na(df$a)] <- 0

# view updated data frame
df
