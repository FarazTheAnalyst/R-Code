# create data frame
df <- data.frame(points=c(5, 7, 8, 0, 12, 14, 0, 10, 8),
                 assists=c(0, 2, 2, 4, 4, 3, 7, 6, 10),
                 rebounds=c(8, 8, 7, 3, 6, 5, 0, 12, 11))

# view data frame
df

# Example 1: Remove Rows with Any Zeros Using Base R
df_new <- df[apply(df!=0, 1, all), ]

# view new data frame
df_new

# Example 2: Remove Rows with Any Zeros Using dplyr
# create new data frame that removes rows with any zeros from original data frame
library("dplyr")
df_new <- filter_if(df, is.numeric, all_vars((.) !=0))
