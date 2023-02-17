# create data frame
df <- data.frame(store=rep(c("A", "B", "C"), each=4),
                 sales=c(3, 4, 4, 2, 5, 8, 9, 7, 6, 8, 3, 2))

# view data frame
df

# calculate cumulative sum by group base R
# add column to show cumulative sales by store
df$cum_sales <- ave(df$sales, df$store, FUN = cumsum)

# view updated data frame
df

# calculate cumulative sum by group using dplyr
library("dplyr")

# add column to show cumulative sales by store
df %>% 
  group_by(store) %>% 
  mutate(cum_sales = cumsum(sales))

# calculate cumulative sum by group using data.table
library("data.table")

# add column to show cumulative sales by store
setDT(df)[ , cum_sales := cumsum(sales), store]

# view updated data frame
df






















