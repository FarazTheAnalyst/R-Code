# Example: Add Labels to Histogram in ggplot2
# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(team=rep(c("A", "B", "C"), each=100),
                 points=c(runif(100, 5, 10),
                          runif(100, 5, 10),
                          runif(100, 5, 10)))

# view head of data frame
head(df)

# We can use the following code to create a histogram that 
# shows the points scored by players on each team with labels 
# that show the count for each bin:
library("ggplot2")

# create histogram with labeels for each bin
ggplot(data=df, aes(x=points)) + 
  geom_histogram(aes(fill=team), binwidth=1, color="black") + 
  stat_bin(binwidth=1, geom="text", color="white", size=4,
           aes(label=..count.., group=team), position=position_stack(vjust=0.5))

# For example, we can use the following syntax to instead use black
# labels with increased font size:
library("ggplot2")

# create histogram with labels for each bin
ggplot(data=df, aes(x=points)) + 
  geom_histogram(aes(fill=team), binwidth=1, color="black") +
  stat_bin(binwidth = 1, geom="text", color="black", size=6,
           aes(label=..count.., group=team), position=position_stack(vjust=0.5))
  
