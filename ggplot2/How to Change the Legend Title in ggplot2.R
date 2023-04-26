# Method 1: Change Legend Title Using labs()
library("ggplot2")

# create dataset
data <- data.frame(team=rep(c("A", "B", "C"), each=50),
                   program=rep(c("low", "high"), each=25),
                   values=seq(1:150+sample(1:100, 150, replace = TRUE)))

# create boxplot
ggplot(data, aes(x=team, y=values, fill=program)) +
  geom_boxplot()

# By default, ggplot2 uses the variable name in the dataset as the
# legend title. However, we can use the labs() function to easily
# change it:
library("ggplot2")

# create dataset
data <- data.frame(team=rep(c("A", "B", "C"), each=50),
                   program=rep(c("low", "high"), each=25), 
                   values=seq(1:150) + sample(1:100, 150, replace = TRUE))

# create boxplot
ggplot(data, aes(x=team, y=values, fill=program)) +
  geom_boxplot() +
  labs(fill="Program Type")

# We can also add a line break in the legend title by
# placing \n wherever
# we'd like the new line to start:

library(ggplot2)

# create dataset
data <- data.frame(team=rep(c('A', 'B', 'C'), each=50),
                   program=rep(c('low', 'high'), each=25),
                   values=seq(1:150)+sample(1:100, 150, replace=TRUE))

# create scatterplot
ggplot(data, aes(x=team, y=values, fill=program)) +
  geom_boxplot() +
  labs(fill="Program\nType")

# Method 2: Change Legend Title Using scale_fill_manual()
library(ggplot)

# create dataset
data <- data.frame(team=rep(c('A', 'B', 'C'), each=50),
                   program=rep(c('low', 'high'), each=25),
                   values=seq(1:150)+sample(1:100, 150, replace=TRUE))

# create boxplot
ggplot(data, aes(x=team, y=values, fill=program)) +
  geom_boxplot() +
  scale_fill_manual("Program Type", values = c("pink", "blue"))
