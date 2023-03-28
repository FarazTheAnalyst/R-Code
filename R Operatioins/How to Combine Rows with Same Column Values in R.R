# create data frame
df <- data.frame(id=c(101, 101, 102, 103, 103, 103),
                 employee=c('Dan', 'Dan', 'Rick', 'Ken', 'Ken', 'Ken'),
                 sales=c(4, 1, 3, 2, 5, 3),
                 returns=c(1, 2, 2, 1, 3, 2))

# view data frame
df

# load dplyr
library("dplyr")
# combine rows with same value for id and empliyee and aggregate remaining columns
df %>% 
  group_by(id, employee) %>% 
  summarise(across(c(sales, returns), sum))

# calcualating mean
df %>% 
  group_by(id, employee) %>% 
  summarise(across(c(sales, returns), mean))
