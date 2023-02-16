# use tapply() from base R
# create data frame
df <- data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B"),
                 points=c(99, 68, 86, 88, 95, 74, 78, 93),
                 assists=c(22, 28, 31, 35, 34, 45, 28, 31),
                 rebounds=c(30, 28, 24, 24, 30, 36, 30, 29))

# calculate summary statistics of "points" group by "team"
tapply(df$points, df$team, summary)


# group by from dplyr package
library(dplyr)

# create data frame
df <- data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B"),
                 points=c(99, 68, 86, 88, 95, 74, 78, 93),
                 assists=c(22, 28, 31, 35, 34, 45, 28, 31),
                 rebounds=c(30, 28, 24, 24, 30, 36, 30, 29))

# calculate summary statistics of "points" grouped by "team"
df %>% 
  group_by(team) %>% 
  summarize(min = min(points),
            q1 = quantile(points, 0.25),
            median = median(points),
            mean = mean(points),
            q3 = quantile(points, 0.75),
            max = max(points))



























