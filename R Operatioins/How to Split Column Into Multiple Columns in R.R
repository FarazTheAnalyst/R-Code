# Method 1: Use str_split_fixed()
# create data frame
df <- data.frame(player=c('John_Wall', 'Dirk_Nowitzki', 'Steve_Nash'),
                 points=c(22, 29, 18),
                 assists=c(8, 4, 15))

# view data frame
df

library(stringr)

# split "player" column using "_" as the separator
df[c("First", "Last")] <- str_split_fixed(df$player, "_", 2)

# view updated data frame
df

# rearrange columns and leave out original "player" column
df_final <- df[c("First", "Last", "points", "assists")]

# view updated data frame
df_final

# method2: use separate()
library("dplyr")
library(tidyr)

# create data frame
df <- data.frame(player=c('John_Wall', 'Dirk_Nowitzki', 'Steve_Nash'),
                 points=c(22, 29, 18),
                 assists=c(8, 4, 15))

# separate "player" column into "First" and "Last"
df %>% separate(player, c("First", "Last"))

# if the first and last names were separated by a comma, the
# separate() function would automatically split based on the 
# location of the comma:
library("dplyr")
library(tidyr)

# create data frame
df <- data.frame(player=c('John,Wall', 'Dirk,Nowitzki', 'Steve,Nash'),
                 points=c(22, 29, 18),
                 assists=c(8, 4, 15))

# separate "player" column into "First" and "Last"
df %>% separate(player, c("First", "Last"))


















