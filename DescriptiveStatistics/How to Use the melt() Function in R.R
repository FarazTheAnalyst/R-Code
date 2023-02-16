# create data frame in wide format
df <- data.frame(team=c("A", "B", "C", "D"),
                 points=c(88, 91, 99, 94),
                 assists=c(12, 17, 24, 28),
                 rebounds=c(22, 28, 30, 31))

# view data frame
df

# use melt() to covvert data frame wide ot long format
# load reshpae2()
library("reshape2")
long_df <- melt(df, id="team")

# view long data frame
long_df

# renames column in long_df
names(long_df) <- c("team", "metric", "amount")

# view updated data frame
long_df










