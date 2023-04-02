# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F'),
                 assists=c(5, 7, 7, 9, 12, 9),
                 rebounds=c(11, 8, 10, 6, 6, 5),
                 blocks=c(6, 6, 3, 2, 7, 9))

# view data frame
df

# Example 1: Add Total Row Using Base R
# add total row to data frame
df_new <- rbind(df, data.frame(team="Total", t(colSums(df[, -1]))))

# view new data frame
df_new

# Example 2: Add Total Row Using dplyr
library("dplyr")

# add total row to data frame
df_new <- df %>% 
  bind_rows(summarise(., across(where(is.numeric), sum),
                      across(where(is.character), ~"Total")))

# view new data frame
df_new
