# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Extract Last Row Using Base R
last_row <- tail(df, n=1)

# view last row
last_row

# Example 2: Extract Last Row Using dplyr
library("dplyr")

# extract last row in data frame
last_row <- df %>% slice(n())

# view last row
last_row

# Example 3: Extract Last Row Using data.table
library("data.table")

# extract last row in data frame
last_row <- setDT(df[nrow(df), ])

# view last row
last_row
