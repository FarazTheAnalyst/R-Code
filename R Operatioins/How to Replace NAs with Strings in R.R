# Example 1: Replace NAs with Strings in One Column
library("tidyr")
df <- data.frame(status=c('single', 'married', 'married', NA),
                 education=c('Assoc', 'Bach', NA, 'Master'),
                 income=c(34, 88, 92, 90))

# view data frame
df

# replace missing values with "single" in status column
df$status <- replace_na("single")

df$status <- df$status %>% replace_na("single")

# view updated data frame
df

# Example 2: Replace NAs with Strings in Multiple Columns
library("tidyr")

df <- data.frame(status=c('single', 'married', 'married', NA),
                 education=c('Assoc', 'Bach', NA, 'Master'),
                 income=c(34, 88, 92, 90))

# replcae missing values with "single" in status column
df <- df %>% replace_na(list(status = "single", education =  "none"))

# view updated data frame
df

