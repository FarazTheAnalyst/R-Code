# Example 1: Use xtabs() for One-Way Frequencies
# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), times=c(27, 33, 40)),
                 position=rep(c('Guard', 'Forward', 'Center'), times=c(20, 50, 30)),
                 points=runif(100, 1, 50))

# view first six rows of data frame
head(df)

# calculate frequencies of team variable
xtabs(~team, data = df)

# Example 2: Use xtabs() for Two-Way Frequencies
# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), times=c(27, 33, 40)),
                 position=rep(c('Guard', 'Forward', 'Center'), times=c(20, 50, 30)),
                 points=runif(100, 1, 50))

# calculate frequencies of team and position variables
xtabs(~team+position, data=df)



