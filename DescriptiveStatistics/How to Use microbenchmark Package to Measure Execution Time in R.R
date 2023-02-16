install.packages("microbenchmark")
library("microbenchmark")

# using micronbechmark() in R
# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(team=rep(c("A", "B"), each=500),
                 points=rnorm(100, mean=20))

# view data frame
head(df)

library("microbenchmark")
library("dplyr")

# time how long it takes to calculate mean value of points by team
microbenchmark(
  aggregate(df$points, list(df$team), FUN=mean),
  df %>% 
    group_by(team) %>% 
    summarise_at(vars(points), list(name = mean))
  
)

library(microbenchmark)
library("dplyr")

# time how long it takes to calculate mean value of points by team
results <- microbenchmark(
  aggregate(df$points, list(df$team), FUN=mean),
  df %>% 
    group_by(team) %>% 
    summarise_at(vars(points), list(name = mean))
)

# create boxplot to visualize results
boxplot(results, names=c("Base R", "dplyr"))

























