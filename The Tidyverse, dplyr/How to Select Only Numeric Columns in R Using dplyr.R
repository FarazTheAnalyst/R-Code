# Example: Select Only Numeric Columns Using dplyr
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(22, 34, 30, 12, 18),
                 assists=c(7, 9, 9, 12, 14),
                 rebounds=c(5, 10, 10, 8, 8))

# view data frame
df

library("dplyr")

# select only the numeric columns from the data frame
df %>% 
  select(where(is.numeric))

# display data type of each vairable in data frame
str(df)
