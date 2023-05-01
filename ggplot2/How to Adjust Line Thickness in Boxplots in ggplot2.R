# make this example reproducible
set.seed(1)

# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=100),
                 points=c(rnorm(100, mean=10),
                          rnorm(100, mean=15),
                          rnorm(100, mean=20)))

# view head of data frame
head(df)

# Example 1: Create Boxplot with Default Line Thickness
library("ggplot2")

# create box plot to visualize distribution of points by team
ggplot(df, aes(x=team, y=points)) +
  geom_boxplot()

# Example 2: Create Boxplot with Increased Line Thickness
library(ggplot2)

# create box plots with increased line thickness
ggplot(df, aes(x=team, y=points)) +
  geom_boxplot(lwd=2)

# Example 3: Create Boxplot with Increased Line Thickness
# of Median Line Only
library("ggplot2")

# create box plots with increased median line thickness usein fatten argument
ggplot(df, aes(x=team, y=points)) + 
  geom_boxplot(fatten=4)
