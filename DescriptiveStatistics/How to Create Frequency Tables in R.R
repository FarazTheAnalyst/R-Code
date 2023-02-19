# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(store=rep(c("A", "B", "C"), each=3),
                 sales=round(runif(9, 2, 6), 0),
                 returns=round(runif(9, 1, 3)))

# view data frame
df

# one way frequency tables in R
table(df$store)

# two way frequency tables in R
# calculate two-wawy frequency table
table(df$store, df$sales)

# three way frequency tables in R
# calculate three way frequency table
table(df$store, df$sales, df$returns)
