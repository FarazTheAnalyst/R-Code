# create data frame
df <- data.frame(store=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 sales=c(4.352, 6.5543, 7.5423, 9.22111, 4.332, 9.55, 8.0094, 7.2),
                 returns=c(1.2324, 2.6654, 3.442, 6.545, 8.11, 8.004, 7.545, 6.0),
                 promos=c(12.11, 14.455, 10.277, 23.51, 20.099, 29.343, 30.1, 45.6))

# view data frame
df

# Example 1: Round Values in Specific Columns Using dplyr
library(dplyr)

# round values in "sales" and "returns" columns to 2 decimal places
df_new <- df %>% mutate(across(c("sales", "returns"), round, 2))

# view updated data frame
df_new

# Example 2: Round Values in All Numeric Columns Using dplyr
# load dplyr

# round values in all numeric columns 2 decimal places
df_new <- df %>% mutate(across(where(is.numeric), round, 2))

# view updated data frame
df_new
