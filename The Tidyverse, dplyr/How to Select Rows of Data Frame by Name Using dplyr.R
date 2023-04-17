# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# set row names
row.names(df) <- c("Mavs", "Hawks", "Cavs", "Lakers", "Heat")

# view data frame
df

library("dplyr")

# select specific rows by name
df %>% 
  filter(row.names(df) %in% c("Hawks", "Cavs", "Heat"))

library("dplyr")

# select rows that do not have Hawks, Cavs, or Heat in the row name
df %>% 
  filter(!row.names(df) %in% c("Hawks", "Cavs", "Heat"))
