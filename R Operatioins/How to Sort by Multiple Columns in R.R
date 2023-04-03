# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 points=c(90, 90, 93, 91, 91, 99, 85),
                 assists=c(33, 28, 31, 39, 34, 40, 44))

# view data frame
df

# Method 1: Use Base R
# sort by points descending, than by assists ascending
df[order(-df$points, df$assists), ]

# Method 2: Use dplyr
library("dplyr")

df %>% 
  arrange(desc(points), assists)
