# Example: Use a Transparent Background in ggplot2
library(ggplot2)

# make this example reproducuble
set.seed(1)

# create dataset
data <- data.frame(team=rep(c("A", "B", "C"), each = 50),
                   program=rep(c("low", "hight"), each=25),
                   values=seq(1:150)+sample(1:100, 150, replace = TRUE))

# create boxplot
ggplot(data, aes(x=team, y=values, fill=program)) + 
  geom_boxplot()

library(ggplot2) 

#make this example reproducible
set.seed(1)

#create dataset
data <- data.frame(team=rep(c('A', 'B', 'C'), each=50),
                   program=rep(c('low', 'high'), each=25),
                   values=seq(1:150)+sample(1:100, 150, replace=TRUE))


# create boxplot
p <- ggplot(data, aes(x=team, y=values, fill=program)) + 
  geom_boxplot() +
  theme(
    panel.background = element_rect(fill='transparent'), ##transparent panel bg
    plot.background = element_rect(fill='transparent', color=NA), ##transparent plot bg
    panel.grid.major = element_blank(), ##remove major gridlines
    panel.grid.minor = element_blank(), ##remove minor gridlines
    legend.background = element_rect(fill='transparent'), #transparent legend bg
    legend.box.background = element_rect(fill='transparent') ##transparent legend panel
    
  )

# display boxplot
p

# We can then export this plot to a PNG file, specifying that the
# background should be transparent in the exported image:
ggsave("grouped_boxplot.png", p, bg="transparent")






