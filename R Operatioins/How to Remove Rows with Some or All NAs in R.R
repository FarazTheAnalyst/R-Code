# Often you may want to remove rows with all or some NAs 
# (missing values) in a data frame in R.

# create data frame with some missing values
df <- data.frame(points = c(12, NA, 19, 22, 32),
                 assists = c(4, NA, 3, NA, 5),
                 rebounds = c(5, NA, 7, 12, NA))

# view data frame
df

# remove NAs using base R
# remove all rows with a missing value in any column
df[complete.cases(df), ]

# remove all rows with a missing value in the third column
df[complete.cases(df[ , 3]), ]

# remove all rows with a missing value in either the first or third column
df[complete.cases(df[ , c(1, 3)]), ]

# remove NAs using Tidyr
# load tidyr package
library(tidyr)

# remove all rows with a missing value in any column
df %>% drop_na()

# remove all rows with a misssing value in the third column
df %>% drop_na(rebounds)
