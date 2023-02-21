# create data frame
df <- data.frame(game1=c(20, 30, 33, 19, 22, 24),
                 game2=c(12, 15, 19, 19, 20, 14),
                 game3=c(22, 29, 18, 12, 10, 11))

# view data frame
df

# load library(tidyr)
library("tidyr")

# pivot all columns into long data frame
df_long <- pivot_longer(df, cols=everything())

# view long data frmae
df_long
