# grouped barplot in ggplot2
# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=3),
                 position=rep(c("Guard", "Forward", "Center"), times=3),
                 points=c(14, 8, 8, 16, 3, 7, 17, 22, 26))

# view data frame
df

# load package
library("ggplot2")

ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position = "dodge", stat="identity")

# customizing a grouped barplot
library("ggplot2")
ggplot(df, aes(fill=position, x=team, y=points)) +
  geom_bar(position="dodge", stat="identity") +
  theme_minimal() +
  labs(x = "Team", y ="Points", title = "Avs. Points Scored by Position & Team") +
  theme(plot.title = element_text(hjust = 0.5, size=20, face="bold")) + 
  scale_fill_manual("Position", values=c("coral2", "lightblue", "wheat"))

# using wall street journal theme from ggthemes
install.packages("ggthems")
library("ggplot2")
library("ggthemes")

ggplot(df, aes(fill=position, x=team, y=points)) + 
  geom_bar(position="dodge", stat="identity") +
  theme_wsj()
