# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'C', 'D'),
                 points=c(12, 15, 22, 29, 35, 24, 11, 24),
                 rebounds=c(10, 4, 4, 15, 14, 9, 12, 8),
                 assists=c(7, 7, 5, 8, 19, 14, 11, 10))

# view data frame
df

# Example 1: Drop Columns by Name Using Base R
df_new <- subset(df, select = -c(points, assists))

# view new data frame
df_new

# Example 2: Drop Columns by Name Using dplyr
library("dplyr")

# create new dat frame by dropping points and assists columns
df_new <- df %>% 
  select(-c(points, assists))

# view new data frame
df_new

# Example 3: Drop Columns by Name Using data.table
library(data.table)

# convet data frame to data table
dt <- setDT(df)

# drop points assists columns
dt[, c("points", "assists"):=NULL]

# view updated data table
dt
