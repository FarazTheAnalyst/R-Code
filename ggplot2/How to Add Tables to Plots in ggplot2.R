install.packages("ggpmisc")
library("ggpmisc")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(13, 23, 24, 20, 19, 14, 29, 31))

# view data frame
df

# Example 1: Add Table to Barplot in ggplot2
# create barplot with table
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(position='dodge', stat='identity') +
  annotate(geom = 'table',
           x=4,
           y=0,
           label=list(df))

# If you're working with a large dataset and you don't want
# to display each individual row, you can use the table() function
# to summarize the data before creating the table in ggplot2:
library("ggplot2")
library("ggpmisc")

# summarize frequencies of team and points in table
my_table <- as.data.frame(table(df[ , c(1, 3)]))
my_table

# create barplot with table
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(position='dodge', stat='identity') +
  annotate(geom = 'table',
           x=4,
           y=0,
           label=list(my_table))

# Example 2: Add Table to Scatterplot in ggplot2
library(ggplot2)
library(ggpmisc)

# create scatterplot with table
ggplot(df, aes(x=team, y=points)) +
  geom_point(aes(color=position)) +
  annotate(geom = "table",
           x=4, 
           y=0,
           label=list(df))


















