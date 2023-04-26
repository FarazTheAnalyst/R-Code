# Example: Change Legend Labels in ggplot2
library("ggplot2")

# make this example reproducible
set.seed(1)

# create dataset
data <- data.frame(team=rep(c("A", "B", "C"), each=50),
                   program=rep(c("low", "high"), each=25),
                   values=seq(1:150) + sample(1:100, 150, replace=TRUE))

# create grouped boxplots
p <- ggplot(data, aes(x=team, y=values, fill=program)) + 
  geom_boxplot()

# display grouped boxplots
p

# create grouped boxplots with custom legend labels
p <- ggplot(data, aes(x=team, y=values, fill=program)) +
  geom_boxplot() +
  scale_fill_discrete(labels=c("High Program", "Low Program"))

# display grouped boxplots
p
