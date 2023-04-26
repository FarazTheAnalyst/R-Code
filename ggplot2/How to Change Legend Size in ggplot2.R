# Change ggplot2 Legend Key Size
library(ggplot2)

# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=3),
                 position=rep(c("Guard", "Forward", "Center"), times=3),
                 points=c(14, 8, 8, 16, 3, 7, 17, 22, 26))

# create grouped barplot
ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position="dodge", stat="identity")

# The following code shows how to use the legend.key.size argument to
# make the keys of the legend larger:
ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position="dodge", stat="identity") +
  theme(legend.key.size = unit(2, "cm"))

# We can also use the legend.key.width and legend.key.height arguments
# to specify widths and heights for the keys:
ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position="dodge", stat="identity") +
  theme(legend.key.height = unit(2, "cm"),
        legend.key.width = unit(4, "cm"))

# Change ggplot2 Legend Title Font Size
ggplot(df, aes(fill=position, y=points, x=team)) +
  geom_bar(position="dodge", stat = "identity") + 
  theme(legend.title = element_text(size=30))

# Change ggplot2 Legend Text Font Size
ggplot(df, aes(fill=position, y=points, x=team)) + 
  geom_bar(position="dodge", stat = "identity" ) +
  theme(legend.text = element_text(size=30))
