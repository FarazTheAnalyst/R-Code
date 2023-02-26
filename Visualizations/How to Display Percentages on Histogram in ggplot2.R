# basic histogram with percentages
library("ggplot2")
library("scales")

# define data frame
data <- data.frame(team = c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                   points = c(77, 79, 93, 85, 89, 99, 90, 80, 68, 91, 92))

# create histogram with percentages
ggplot(data, aes(x=factor(team))) +
         geom_bar(aes(y = (..count..)/sum(..count..))) +
  scale_y_continuous(labels = percent)

# histogram with percentages (Remove Decimal Places)
library("ggplot2")
library("scales")

# define data frame
data <- data.frame(team = c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                   points = c(77, 79, 93, 85, 89, 99, 90, 80, 68, 91, 92))

# create histogram with percentages
ggplot(data, aes(x=factor(team))) +
  geom_bar(aes(y=(..count..)/sum(..count..))) +
  scale_y_continuous(labels=scales::percent_format(accuracy = 1L))

# create histogram with percentages and custom aesthetics
ggplot(data, aes(x=factor(team))) +
  geom_bar(aes(y = (..count..)/sum(..count..)), fill = 'lightblue') +
  scale_y_continuous(labels = percent) +
  labs(title = 'Brreakdown by Team', x ='Team', y='Percent of Total') +
  theme_minimal()
  















