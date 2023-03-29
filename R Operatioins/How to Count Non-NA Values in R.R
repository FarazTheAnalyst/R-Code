# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, NA, 30, 32, 20, 22, 17, NA),
                 rebounds=c(10, 8, 9, 13, NA, 20, 8, 7))

# view data frame
df

# Method 1: Count Non-NA Values in Entire Data Frame
# count non-NA values in entire data frame
sum(!is.na(df))

# Method 2: Count Non-NA Values in Each Column of Data Frame
# count non-NA values in each column
colSums(!is.na(df))

# Method 3: Count Non-NA Values by Group
library(dplyr)
df %>% 
  group_by(team) %>% 
  summarise(total_non_na = sum(!is.na(points)))

            