# Method 1: Use levels() Function
# create data frame
df <- data.frame(conf = factor(c("North", "East", "South", "West")),
                 points = c(34, 55, 41, 28))

# view data frame
df

# view levels of "conf" variable
levels(df$conf)

# rename just "North" factor level
levels(df$conf)[levels(df$conf) == "North"] <- "N"

# view levels of "conf" variable
levels(df$conf)

# rename every factor level
levels(df$conf) <- c("N", "E", "S", "W")

# view levels of "conf" variable
levels(df$conf)

# use recode() function
library("dplyr")

# create data frame
df <- data.frame(conf = factor(c('North', 'East', 'South', 'West')),
                 points = c(34, 55, 41, 28))

# recode factor levels
df$conf <- recode(df$conf, North = 'N',
                  East  = 'E',
                  South = 'S',
                  West  = 'W')

levels(df$conf)
