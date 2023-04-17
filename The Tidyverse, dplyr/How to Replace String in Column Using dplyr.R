# create data frame
df <- data.frame(conf=c('East', 'East', 'West', 'West'),
                 position=c('P_Guard', 'P_Guard', 'S_Guard', 'S_Guard'),
                 points=c(22, 25, 29, 13))

# view data frame
df

# Example 1: Replace One String with New String
library("dplyr")
library("stringr")

# replace "East" with "Eastern" in conf column
df %>% 
  mutate(across("conf", str_replace, "East", "Eastern"))

# Example 2: Replace Multiple Strings with New String
library("dplyr")
library("stringr")

# replace "P_" and "S_" with empty string in position column
df %>% 
  mutate(across("position", str_replace, "P_|S_", ""))
