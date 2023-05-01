# make this example reproducible 
set.seed(1)

# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=100),
                 points=c(rnorm(100, mean=10),
                          rnorm(100, mean=15),
                          rnorm(100, mean=20)))

# view head of data frame
head(df)

# Example 1: Create Violin Plots by Group
library("ggplot2")

# create violin plot to visualize distribution of points by team
ggplot(df, aes(x=team, y=points, fill=team)) + 
  geom_violin()

# Example 2: Create Violin Plots by Group
library("ggplot2")

# create horizontal violin plots to visualize distribution of points by team
ggplot(df, aes(x=team, y=points, fill=team)) + 
  geom_violin() + 
  scale_fill_manual(values=c("orange", "purple", "skyblue")) +
  coord_flip()

library("ggplot2")
library("ggthemes")

# create violin plots and display meaidan points values as circle
ggplot(df, aes(x=team, y=points, fill=team)) + 
  geom_violin() + 
  stat_summary(fun=median, geom="point", size=2) + 
  theme_pander()
