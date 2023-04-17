library("dplyr")

# Example: Replace Multiple Values Using dplyr
# create data frame
df <- data.frame(conf=c('East', 'East', 'West', 'West', 'North'),
                 position=c('Guard', 'Guard', 'Guard', 'Guard', 'Forward'),
                 points=c(22, 25, 29, 13, 18))

# view data frame
df

library("dplyr")

# replace multiple vlaues in conf and position columns
df %>% 
  mutate(conf=recode(conf, "East" = "E", "West" = "W", "North" = "N"),
         position = recode(position, "Guard" = "G", "Forward" = "F"))
