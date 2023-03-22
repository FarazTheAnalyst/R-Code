# create data frame
df <- data.frame(team=c('Mavs', 'Pacers', 'Mavs', 'Celtics', 'Nets', 'Pacers'),
                 points=c(104, 110, 134, 125, 114, 124),
                 assists=c(22, 30, 35, 35, 20, 27))

# view data frame
df

# 
# Example 1: Filter where Column is Between Two Values Using Base R
# filter for rows where value in points column is between 100 and 120

df_new <- subset(df, points %in% 100:120)

# view updated data frame
df_new

# Example 2: Filter where Column is Between Two Values Using dplyr
library("dplyr")

# filter for rows wehre value in points column is between 100 and 120
df_new <- df %>% 
  filter(between(points, 100, 120))

# view updated data frame
df_new
