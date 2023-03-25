# Method 1: Merge Multiple Data Frames Using Base R
# define data frame
df1 <- data.frame(id=c(1, 2, 3, 4, 5),
                  revenue=c(34, 36, 40, 49, 43))

df2 <- data.frame(id=c(1, 2, 5, 6, 7),
                  expenses=c(22, 26, 31, 40, 20))

df3 <- data.frame(id=c(1, 2, 4, 5, 7),
                  profit=c(12, 10, 14, 12, 9))

# put all data frames into list
df_list <- list(df1, df2, df3)
df_list

# merge all data frames together
Reduce(function(x, y) merge(x, y, all=TRUE), df_list)

# Method 2: Merge Multiple Data Frames Using Tidyverse
# define data frames

df1 <- data.frame(id=c(1, 2, 3, 4, 5),
                  revenue=c(34, 36, 40, 49, 43))

df2 <- data.frame(id=c(1, 2, 5, 6, 7),
                  expenses=c(22, 26, 31, 40, 20))

df3 <- data.frame(id=c(1, 2, 4, 5, 7),
                  profit=c(12, 10, 14, 12, 9))

# load tidyverse package
library("tidyverse")

# put all data frames into list
df_list <- list(df1, df2, df3)

# merge all data frames together
df_list %>% reduce(full_join, by="id")




























