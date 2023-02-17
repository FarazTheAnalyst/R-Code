# create data frame
df <- data.frame(team=c('a', 'a', 'b', 'b', 'b', 'c', 'c'),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4))

# view data frame
df

# find mean points scored by team
aggregate(df$pts, list(df$team), FUN=mean)

# calculate mean by group using dplyr
library("dplyr")

df <- data.frame(team=c('a', 'a', 'b', 'b', 'b', 'c', 'c'),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4))

# find mean points scored by team
df %>% 
  group_by(team) %>% 
  summarise_at(vars(pts), list(name=mean))

# calculate mean by group using data.table
library("data.table")

# convert data frame to data table
setDT(df)

# find mean points scored by team
df[ ,list(mean=mean(pts)), by=team]













