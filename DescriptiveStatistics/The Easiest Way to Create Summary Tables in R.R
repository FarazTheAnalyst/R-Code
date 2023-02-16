# create basic summary table
# create data frame
df <- data.frame(team=c("A", "A", "B", "B", "C", "C", "C"),
                 points=c(15, 22, 29, 41, 30, 11, 19),
                 rebounds=c(7, 8, 6, 6, 7, 9, 13),
                 steals=c(1, 1, 2, 3, 5, 7, 5))

# view data frame
df

# install and load package
install.packages("psych")
library(psych)

# create summary table
describe(df)

# create smaller summary table
describe(df, fast=TRUE)

# create summary table for just "point" and "rebounds" columns
describe(df[ , c("points", "rebounds")], fast=TRUE)

# create summary table, grouped by "team" variable
describeBy(df, group=df$team, fast=TRUE)






