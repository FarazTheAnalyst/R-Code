# create data frame
df <- data.frame(team=c("A", "A", "B", "C", "D", "E", "F", "G", "H", "I"),
                 points=c(4, 4, NA, 8, 6, 12, 14, 86, 13, 8),
                 rebounds=c(9, 9, 7, 6, 8, NA, 9, 14, 12, 11),
                 assists=c(2, 2, NA, 7, 6, 6, 9, 10, NA, 14))

# VIEW data frame
df

# remove rows with missing values
library("dplyr")

# remove rows with missing values
new_df <- df %>% na.omit()

# view new data frame
new_df

# Replace Missing values with Another value
library("dplyr")
library("tidyr")

# replace missing values in each numeric column with meidan value of column
new_dfr <-df %>% 
  mutate(across(where(is.numeric),~replace_na(.,median(.,na.rm=TRUE)))) 

# view new data frame
new_dfr


library("dplyr")

# remove duplicate rows
new_df <- df %>% distinct(.keep_all = TRUE)

# view new data frame
new_df




















