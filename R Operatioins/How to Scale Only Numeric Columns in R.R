# Example: Scale Only Numeric Columns Using dplyr
# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(22, 34, 30, 12, 18),
                 assists=c(7, 9, 9, 12, 14),
                 rebounds=c(5, 10, 10, 8, 8))

# view data frame
df

library("dplyr")

# scale only the numeric column in the data frame
df %>% mutate(across(where(is.numeric), scale))
