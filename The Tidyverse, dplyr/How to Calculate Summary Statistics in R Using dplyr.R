# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 15, 19, 14, 24, 25, 39, 34),
                 assists=c(6, 8, 8, 9, 12, 6, 8, 10),
                 rebounds=c(9, 9, 8, 10, 8, 4, 3, 3))

# view data frame
df

library("dplyr")
library("tidyr")

# calculate summary statistics for each numeric variable in data frame
df %>% summarise(across(where(is.numeric), .fns = 
                          list(min=min,
                               meaidan = median,
                               mean=mean,
                               stdev = sd,
                               q25 = ~quantile(., 0.25),
                               q75 = ~quantile(., 0.75),
                               max=max))) %>% 
  pivot_longer(everything(), names_sep = "_", names_to = c("variable", ".value"))
