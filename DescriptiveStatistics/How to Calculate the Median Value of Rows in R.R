# create data frame
df <- data.frame(game1=c(10, 12, 14, 15, 16, 18, 19),
                 game2=c(14, 19, 13, 8, 15, 15, 17),
                 game=c(9, NA, 15, 25, 26, 30, 19))
                 
# view data frame
df

# calculate meidan of each row
df$row_median <- apply(df, 1, median, na.rm=TRUE)

# view updated data frame
df

# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 game1=c(10, 12, 14, 15, 16, 18, 19),
                 game2=c(14, 19, 13, 8, 15, 15, 17),
                 game3=c(9, NA, 15, 25, 26, 30, 19))

# view data frame
df

# load dplyr package
library("dplyr")

# calculate median of rowws for numeric columns only 
df %>% 
  rowwise() %>% 
  mutate(row_median = median(c_across(where(is.numeric)), na.rm=TRUE))















