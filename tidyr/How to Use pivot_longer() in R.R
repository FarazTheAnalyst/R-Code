# Example: Use pivot_longer() in R
df <- data.frame(player=c('A', 'B', 'C', 'D'),
                 year1=c(12, 15, 19, 19),
                 year2=c(22, 29, 18, 12))

# view data frame
df

library(tidyr)

# pivot the data frame into long format
df %>% pivot_longer(cols=c("year1", "year2"),
                    names_to = "year",
                    values_to="points")
