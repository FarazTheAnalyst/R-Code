# calculate quantiles of vector
data = c(1, 3, 3, 4, 5, 7, 8, 9, 12, 13, 13, 15, 18, 20, 22, 23, 24, 28)

# calculate quartiles
quantile(data, probs = seq(0, 1, 1/4))

# calculate quintiles
quantile(data, probs = seq(0, 1, 1/5))

# calculate diciles
quantile(data, probs = seq(0, 1, 1/10))

# calculate reandom quantiles of interest
quantile(data, probs = c(.2, .5, .9))

# calculate quantiles of columns in data frame
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5, 7, 7, 8, 12, 14, 18),
                 var2=c(7, 7, 8, 3, 2, 6, 8, 9, 11, 11, 16),
                 var3=c(3, 3, 6, 6, 8, 4, 4, 7, 10, 10, 11))

# calculate quartiles of column "var2"
quantile(df$var2, probs = seq(0, 1, 1/4))

# calculate quritles of every column
sapply(df, function(x) quantile(x, probs = seq(0, 1, 1/4)))

# calculate quantiles by group using dplyr()
library("dplyr")

# define data frame
df <- data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B", "C", "C", "C"),
                 points=c(1, 3, 3, 4, 5, 7, 7, 8, 12, 14, 18))

# define quantiles of interest
q=c(.25, .5, .75)

# calcualte quantiles by grouping variable
df %>% 
  group_by(team) %>% 
  summarize(quant25=quantile(points, probs = q[1]),
            quant50=quantile(points, probs = q[2]),
            quant75=quantile(points, probs = q[3]))



















