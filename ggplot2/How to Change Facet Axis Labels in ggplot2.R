# Example: Change Facet Axis Labels in ggplot2
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D', 'D'),
                 points=c(8, 14, 20, 22, 25, 29, 30, 31),
                 assists=c(10, 5, 5, 3, 8, 6, 9, 12))

# view data frame
df

library("ggplot2")

# create multiple scatter plots using facet_wrap
ggplot(df, aes(assists, points)) +
  geom_point() + 
  facet_wrap(.~team, nrow=4)

library("ggplot2")

# create multiple scatter plots using facet_wrap with custom facet labels
ggplot(df, aes(assists, points)) + 
  geom_point() + 
  facet_wrap(.~team, nrow=4,
             strip.position = "left", 
             labeller = as_labeller(c(A="team A", 
                                      B="team B", 
                                      C="team C",
                                      D="team D"))) + 
  ylab(NULL) + 
  theme(strip.background = element_blank(),
        strip.placement = "outside")
