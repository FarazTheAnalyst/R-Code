# reshape data frmom wide to long
# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D'),
                 year1=c(12, 15, 19, 19),
                 year2=c(22, 29, 18, 12))

# view data frame
df

library("tidyr")

# pivot the data frame into a long format
df %>% pivot_longer(cols=c('year1', 'year2'),
                    names_to='year',
                    values_to='points')

# reshape data from long to wide
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























