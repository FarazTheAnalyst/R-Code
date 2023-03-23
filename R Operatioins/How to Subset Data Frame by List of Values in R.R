# create data frame
df <- data.frame(team=c('A', 'B', 'B', 'B', 'C', 'C', 'C', 'D'),
                 points=c(12, 22, 35, 34, 20, 28, 30, 18),
                 assists=c(4, 10, 11, 12, 12, 8, 6, 10))

# view data frame
df

# Method 1: Subset Data Frame by List of Values in Base R
# define valeus to subset by 
vals <- c("A", "C")

# subset data frame to only contain rows  where team is "A" or "c"
df_new <- df[df$team %in% vals, ]

# view results
df_new

# Method 2: Subset Data Frame by List of Values in dplyr
library("dplyr")

# define values to subset by
vals <- c("A", "C")

# subset data frame to only contain rows where team is "A" OR "c"
df_new <- filter(df, team %in% vals)

# view results
df_new

library(data.table)

# define values to subset by
vals <- c("A", "C")

# subset data frame to only contain rows where team is "A" or "C"
df_new <- setDT(df, key = "team")[J(vals)]

# view results
df_new



















