# create data frame
df <- data.frame(points=c(21, 15, 10, 4, 4, 9, 12, 10),
                 assists=c(NA, NA, NA, NA, NA, NA, NA, NA),
                 rebounds=c(8, 12, 14, 10, 7, 9, 8, 5),
                 steals=c(NA, NA, NA, NA, NA, NA, NA, NA))

# view data frame
df
# Example 1: Find Columns with All Missing Values Using Base R
# check if each column has all missing values
all_miss <- apply(df, 2, function(x) all(is.na(x)))

# display columns with all missing values
names(all_miss[all_miss>0])

# Example 2: Find Columns with All Missing Values Using purrr Package
library("tidyverse")

# display columns with all missing values
df %>% keep(~all(is.na(.x))) %>% names
