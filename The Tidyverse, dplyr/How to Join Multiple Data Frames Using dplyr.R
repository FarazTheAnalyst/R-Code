library("dplyr")

# create data frame
df1 <- data.frame(a = c('a', 'b', 'c', 'd', 'e', 'f'),
                  b = c(12, 14, 14, 18, 22, 23))

df2 <- data.frame(a = c('a', 'a', 'a', 'b', 'b', 'b'),
                  c = c(23, 24, 33, 34, 37, 41))

df3 <- data.frame(a = c('d', 'e', 'f', 'g', 'h', 'i'),
                  d = c(23, 24, 33, 34, 37, 41))

# join the three data frames
df1 %>% 
  left_join(df2, by="a") %>% 
  left_join(df3, by="a")

# join the three data frames and save result as new data frame named all_data
all_data <- df1 %>% 
  left_join(df2, by="a") %>% 
  left_join(df3, by="a")

# view summary of resulting data frame
glimpse(all_data)
