# create data frame
df <- data.frame(players=c("A", "B", "C", "D", "E", "F", "G", "H"),
                 makes=c(4, 4, 3, 6, 7, 8, 3, 10),
                 attempts=c(12, 7, 5, 6, 10, 12, 5, 19))

# view data frame
df

# calculate ratio between makes and attempts columns
df$ratio <- df$makes/df$attempts

# veiw updated data frame
df

# calculate ratio between makes and attempts column, rounded to 2 decimal places
df$ratio <- round(df$makes/df$attempts, 2)

# view updated data frame
df

# load dplyr package
library("dplyr")
# add new column that show ratio of makes  to attempts
df <- df %>% 
  mutate(ratio = makes/attempts)

# view updated data frame
df

# add new column that shows ratio of makes to attempts, rounded to 2 decimal plces
df <- df %>% 
  mutate(ratio = round(makes/attempts, 2))

# view updated data frame
df






