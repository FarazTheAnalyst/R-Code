# Example: Remove NAs from Plot in ggplot2
# create data frame
df <- data.frame(team=c('A', 'A', NA, NA, 'B', 'B', 'B', 'B'),
                 points=c(22, 29, 14, 8, 5, 12, 26, 36))

# view data frame
df

library("ggplot2")

# create bar plot to visualize occurrences by team
ggplot(df, aes(x=team)) + 
  geom_bar()

# To remove this bar from the plot, we can use the subset()
# function to subset the data frame to only include rows where
# the value in the team column is not NA:
library("ggplot2")

# create bar plot to visualize occurrences by team and remove NA
ggplot(data=subset(df, !is.na(team)), aes(x=team)) +
  geom_bar()
