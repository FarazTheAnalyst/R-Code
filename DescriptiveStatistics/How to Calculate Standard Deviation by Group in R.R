# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=6),
                 points=c(8, 10, 12, 12, 14, 15, 10, 11, 12, 
                          18, 22, 24, 3, 5, 5, 6, 7, 9))

# view data frame
df

# calculate standard deviation by group using base R
# calculate standard deviation of points by team
aggregate(df$points, list(df$team), FUN=sd)

# calculate standard deviation by group using dplyr
library("dplyr")

# calculate standard deviation of points scored by team
df %>% 
  group_by(team) %>% 
  summarise_at(vars(points), list(name=sd))

# calculate standard deviation by group using data.table
library("data.table")

# convert data frame to data table
setDT(df)

# calculate standard deviation of points scored by team
df[ , list(sd=sd(points)), by=team]










