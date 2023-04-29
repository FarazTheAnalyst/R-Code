# Boxplots are useful for visualizing the five-number summary
# of a dataset, which includes:
# The minimum
# The first quartile
# The median
# The third quartile
# The maximum

# define variables
team=rep(c("A", "B", "C"), each=50)
program=rep(c("low", "high"), each=25)
increase=seq(1:150)+sample(1:100, 100, replace = TRUE)

# create dataset using variables
data = data.frame(team, program, increase)

# view first six rows of dataset
head(data)

library("ggplot2")

ggplot(data, aes(x=team, y=increase, fill=program)) +
  geom_boxplot()

library("ggplot2")
ggplot(data, aes(x=program, y=increase, fill=team)) + 
  geom_boxplot()

library("ggplot2")

ggplot(data, aes(x=team, y=increase, fill=program)) + 
  geom_boxplot() + 
  facet_wrap(~program)





















