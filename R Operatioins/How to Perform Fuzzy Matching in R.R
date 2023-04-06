# Example: Fuzzy Matching in R
df1 <- data.frame(team=c('Mavericks', 'Nets', 'Warriors', 'Heat', 'Lakers'),
                  points=c(99, 90, 104, 117, 100))
df2 <- data.frame(team=c('Mavricks', 'Warrors', 'Heat', 'Netts', 'Kings', 'Lakes'),
                  assists=c(22, 29, 17, 40, 32, 30))

# view data frame
print(df1)
print(df2)

install.packages("fuzzyjoin")
library("fuzzyjoin")
library(dplyr)

# perform fuzzy matching left join
stringdist_join(df1, df2, 
                by='team', #match based on team
                mode='left', #use left join
                method = "jw", #use jw distance metric
                max_dist=99, 
                distance_col='dist') %>%
  group_by(team.x) %>%
  slice_min(order_by=dist, n=1)
