# calculate sum by group using base R
# create data frame
df <- data.frame(team=c("a", "a", "b", "b", "b", "c", "c"),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4))

# view data frame
df

# find sum of points scored by team
aggregate(df$pts, list(df$team), FUN=mean)

# calculate sum by group using dplyr
library(dplyr)

# create data frame
df <- data.frame(team=c('a', 'a', 'b', 'b', 'b', 'c', 'c'),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4))


# find sum of points scored by team
df %>% 
  group_by(team) %>% 
  summarise(Freq=sum(pts))

# calculate sum by group using data.table
library("data.table")

# create data frame
df <- data.frame(team=c('a', 'a', 'b', 'b', 'b', 'c', 'c'),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4))

# convert data frame to data table
setDT(df)

# find sum of points scored by team
df[ ,list(sum=sum(pts)), by=team]



























