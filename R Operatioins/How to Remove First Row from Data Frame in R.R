# Example 1: Remove First Row Using Base R
# create data frame
df <- data.frame(team=c(NA, 'A', 'B', 'C', 'D', 'E'),
                 points=c(NA, 99, 90, 86, 88, 95),
                 assists=c(NA, 33, 28, 31, 39, 34),
                 rebounds=c(NA, 30, 28, 24, 24, 28))

# view data frame
df

# remove first row
df <- df[-1, ]

# view updated data frame
df

# reset rown names
rownames(df) <- NULL

# view updated data frame
df

# Example 2: Remove First Row Using dplyr Package
#  create data frame
df <- data.frame(team=c(NA, 'A', 'B', 'C', 'D', 'E'),
                 points=c(NA, 99, 90, 86, 88, 95),
                 assists=c(NA, 33, 28, 31, 39, 34),
                 rebounds=c(NA, 30, 28, 24, 24, 28))

# view data frame
df

# load dplyr
library("dplyr")

# remove first row from data frame
df <- df %>% slice(-1)

# view updated data frame
df

# view updated data frame
df
















