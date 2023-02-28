# stacked barplot in ggplot2
# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=3),
                 position=rep(c("Guard", "Forward", "Center"), times=3),
                 points=c(14, 8, 8, 16, 3, 7, 17, 22, 26))

# view data frame
df

# load ggplot2
library("ggplot2")
ggplot(df, aes(x=team, y=points, fill=position)) +
  geom_bar(position = "stack", stat="identity")


# we can also customize the apperance further by using one of the pre-defined themes in the ggthemes library.
# we could use the wall street journal theme from the library
install.packages("ggthemes")
library("ggplot2")
library("ggthemes")

ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position = "stack", stat = "identity") +
  theme_wsj()

# customizing a stacked barplot
library("ggplot2")

ggplot(df, aes(fill=position, x=team, y=points)) +
  geom_bar(position = "stack", stat="identity") +
  theme_minimal() +
  labs(x = "Team", y="Points", title = "Avg. Points Scored by Position & Team") +
  theme(plot.title = element_text(hjust=0.5, size=20, face="bold")) +
  scale_fill_manual("Position", values = c("coral2", "lightblue", "pink")) +
  theme_wsh()