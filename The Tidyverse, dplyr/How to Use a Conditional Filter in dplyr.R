# Example: How to Use Conditional Filter in dplyr
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 points=c(10, 12, 17, 18, 24, 29, 29, 34, 35))

# view data frame
df

library("dplyr")

# filter data frame where points is greater than osme value (vased on team)
df %>% 
  filter(case_when(team=="A" ~ points > 15,
                   team=="B" ~ points > 20,
                   TRUE ~ points > 30))
