# Example: Use pivot_wider() in R
# create data frame
df <- data.frame(player=rep(c('A', 'B'), each=4),
                 year=rep(c(1, 1, 2, 2), times=2),
                 stat=rep(c('points', 'assists'), times=4),
                 amount=c(14, 6, 18, 7, 22, 9, 38, 4))

# view data frame
df

library("tidyr")

# pivot the data frame into a wide format
df %>% pivot_wider(names_from = stat, values_from = amount)
