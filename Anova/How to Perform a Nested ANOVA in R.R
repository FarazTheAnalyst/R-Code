# A nested ANOVA is a type of ANOVA ("analysis of variance") in 
# which at least one factor is nested inside another factor.

# create data
df <- data.frame(growth=)
df <- data.frame(growth=c(13, 16, 16, 12, 15, 16, 19, 16, 15, 15, 12, 15,
                          19, 19, 20, 22, 23, 18, 16, 18, 19, 20, 21, 21,
                          21, 23, 24, 22, 25, 20, 20, 22, 24, 22, 25, 26),
                 fertilizer=c(rep(c('A', 'B', 'C'), each=12)),
                 tech=c(rep(1:9, each=4)))

# view first six rows of data
head(df)

# fit summary of nested ANOVA
nest <- aov(df$growth ~ df$fertilizer / factor(df$tech))

# view summary of nested ANOVA
summary(nest)

# visualize the results
# load ggplot2 data visualization package
library("ggplot2")

# create boxplot tosualize plant growth
ggplot(df, aes(x=factor(tech), y=growth, fill=fertilizer)) +
  geom_boxplot()
