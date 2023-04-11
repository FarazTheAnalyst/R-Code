# How to Reproduce the Error
# create data frame
df <- data.frame(store=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 promotion=c('Y', 'Y', 'N', 'N', 'Y', 'Y', 'N', 'N'),
                 product=c(1, 2, 1, 2, 1, 2, 1, 2),
                 sales=c(12, 18, 29, 20, 30, 11, 15, 22))

# view data frame
df

library(reshape2)

# convert data frame to wide format
df_wide <- dcast(df, store ~ product, value.var = "sales")

# view result
df_wide

# How to Fix the Error
library("reshape2")

# convert data frame to wide format
df_wide <- dcast(df, store~product, value.var = "sales", fun.aggregate = sum)

# view result
df_wide
