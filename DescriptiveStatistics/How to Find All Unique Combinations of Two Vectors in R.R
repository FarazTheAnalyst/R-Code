#  Find Unique Combinations Using tidyr
library("tidyr")

# define vectors
region=c("North", "South", "East", "West")
points=c(0, 5, 10)

# display all unique combinations of region and points
crossing(region, points)

# define vectors
region=c("North", "South", "East", "West")
points=c(0, 5, 10)

# display number of unique combinations of region and points
nrow(crossing(region, points))

# find unique combinations using data.table
library("data.table")

# define vectors
region=c('North', 'South', 'East', 'West')
points=c(0, 5, 10)

# display all unique combinations of region and points
CJ(region, points, unique=TRUE)
