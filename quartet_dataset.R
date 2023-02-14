install.packages("Tmisc")
library(ggplot2)
library("Tmisc")
data(quartet)
View(quartet)

# summarizing data
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

# Visualizing data
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)
