# Example: Create Histogram by Group in ggplot2
# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(team=rep(c("A", "B","C"), each=100),
                 points=c(rnorm(100, mean=10),
                          rnorm(100, mean=15),
                          rnorm(100, mean=20)))

# view head of data frame
head(df)

library(ggplot2)

# create histogram by team
ggplot(df, aes(x=points, fill=team)) + 
  geom_histogram(color="black", alpha=0.4, poistion="identity") + 
  scale_fill_manual(values=c("red", "blue", "purple"))

library("ggplot2")

# create histogram by team
ggplot(df, aes(x=points, fill=team)) + 
  geom_histogram(color="black", alpha=0.4, position = "identity") + 
  scale_fill_manual(values=c("red", "blue", "purple")) + 
  labs(fill="Team", x="Points Scored", y="Count", title = "Points Scored by Team") + 
  theme_classic()
