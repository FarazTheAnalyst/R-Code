# load necessary libraries
library("ggplot2")
library("reshape2")

# create data frame
df <- data.frame(index=c(1, 2, 3, 4, 5, 6),
                 var1=c(4, 4, 5, 4, 3, 2), 
                 var2=c(1, 2, 4, 4, 6, 9),
                 var3=c(9, 9, 9, 5, 5, 3))

# melt data frame into long format
df <- melt(df, id.vars = "index", variable.name = "serires")

# create line plot for each column in data frame
ggplot(df, aes(index, value)) +
  geom_line(aes(colour = serires))

# plot multiple columns on different graphs
# load necessary libraries
library("ggplot2")
library("resha[e2")

# create data fraem
df <- data.frame(index=c(1, 2, 3, 4, 5, 6),
                 var1=c(4, 4, 5, 4, 3, 2),
                 var2=c(1, 2, 4, 4, 6, 9),
                 var3=c(9, 9, 9, 5, 5, 3))

# melt data frame into long format
df <- melt(df, id.vars = "index", variable.name = "series")

# create line plot for each column in data frame
ggplot(df, aes(index, value)) +
  geom_line(aes(colour = series))+
  facet_grid(series ~ .)
























