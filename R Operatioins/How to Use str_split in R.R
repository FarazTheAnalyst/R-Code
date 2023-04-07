# create data frame
df <- data.frame(team=c('andy & bob', 'carl & doug', 'eric & frank'),
                 points=c(14, 17, 19))

# view data frame
df

# Example 1: Split String Using str_split()
library("stringr")

# split the string in the team column on "&"
str_split(df$team, pattern = " & ")

# Example 2: Split String Using  str_split_fixed()
library("stringr")

# split the string in the team column on " & "
str_split_fixed(df$team, pattern = " & ", 2)

# append the resulting matrix to the end of the data frame
library(stringr)

# split the string  in the team column and append resulting matrix ot data frame
df[, 3:4] <- str_split_fixed(df$team, " & ", 2)

# view data frame
df

