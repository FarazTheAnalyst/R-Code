# Difference #1: Faster Importing with fread Function
library("microbenchmark")
library("data.table")

# make this example reproducible
set.seed(1)

# create data frame with 10,000 rows and 100 columns
df <- as.data.frame(matrix(runif(10^4 * 100), nrow = 10^4))

# export CSV to current working directory
write.csv(df, "test.csv", quote = FALSE)

# import CSV file using fread and read.csv and time how longit takes
results <- microbenchmark(
  read.csv = read.csv("test.csv", header = TRUE, stringsAsFactors = FALSE),
  fread = fread("test.csv", sep = ",", stringsAsFactors = FALSE),
  times = 10
)

# view results
results

# differece #3: Faster Data Manipulation with data.table
# the following code shows how to calculate the mean of one
# variable, grouped by another variable in both a data.table
# and data.frame:

library(microbenchmark)
library(data.table)

# make this example reproducible
set.seed(1)

# create data frame with 10,000 rows and 100 columns
d_frame <- data.frame(team=rep(c("A", "B"), each=5000),
                      points=c(rnorm(10000, mean=20, sd=3)))

# create data.table from data.frame
d_table <- setDT(d_frame)

# calculate mean of points grouped by team in data.frame and data.table
results <- microbenchmark(
  mean_d_frame = aggregate(d_frame$points, list(d_frame$team), FUN=mean),
  mean_d_table = d_table[ ,list(mean=mean(points)), by=team],
  times = 10)

# view results
results

# Difference #3: Fewer Printed Lines with data.table
library("data.table")

# make this example reproducible
set.seed(1)

# create data frame
d_frame <- data.frame(x=rnorm(200),
                      y=rnorm(200),
                      z=rnorm(200))

# view d_frame
d_frame

# view data table
d_table <- setDT(d_frame)

# view data table
d_table














