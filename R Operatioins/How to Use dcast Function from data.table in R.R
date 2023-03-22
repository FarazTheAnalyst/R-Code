library("data.table")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(18, 13, 10, 12, 16, 25, 24, 31),
                 assists=c(9, 8, 8, 5, 12, 15, 10, 7))

# convert data frame to data table
dt <- setDT(df)

# view data table
dt

# Example 1: Calculate Metric for One Variable, 
# Grouped by Other Variables
# calculate mean points value by team and position
dt_new <- dcast(dt,
                team + position ~ .,
                fun.aggregate = mean, 
                value.var = 'points')

# view results
dt_new

# Example 2: Calculate Multiple Metrics for One Variable,
# Grouped by Other Variables
# calculate mean and max points values by team and position
dt_new <- dcast(dt,
                team + position ~ .,
                fun.aggregate = list(mean, max),
                value.var = "points")


# view results
dt_new

# Example 3: Calculate Metric for Multiple Variables,
# Grouped by Other Variables

# calculate mean and max points values by team and position
dt_new <- dcast(dt,
                team + position ~ .,
                fun.aggregate = mean,
                value.var = c("points", "assists"))

# view results
dt_new










