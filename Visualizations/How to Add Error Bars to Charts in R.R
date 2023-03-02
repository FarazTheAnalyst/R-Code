#create data frame
df <- data.frame(category=c('A', 'B', 'C', 'D', 'E'),
                 value=c(12, 17, 30, 22, 19),
                 sd=c(4, 5, 7, 4, 2))

# view data frame
df

library(ggplot2)

#create bar plot with error bars
ggplot(df) +
  geom_bar(aes(x=category, y=value), stat='identity', fill='steelblue') +
  geom_errorbar(aes(x=category, ymin=value-sd, ymax=value+sd), width=0.4)

library(ggplot2)

#create bar plot with custom error bars 
ggplot(df) +
  geom_bar(aes(x=category, y=value), stat='identity', fill='steelblue') +
  geom_errorbar(aes(x=category, ymin=value-sd, ymax=value+sd),
                width=0.3, size=2.3, color='red')

# add error bars using raw data
# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(category=rep(c('A', 'B', 'C', 'D', 'E'), each=10),
                 value=runif(50, 10, 20))

# view first six rows of data frame
head(df)

# load packages
library("dplyr")
library("ggplot2")

# summarize mean and sd for the each catogary
df_summary <- df %>% 
  group_by(category) %>% 
  summarize(mean=mean(value),
            sd=sd(value))

# view summary data
df_summary


# create bar plot with error bars
ggplot(df_summary) +
  geom_bar(aes(x=category, y=mean), stat="identity", fill="steelblue") +
  geom_errorbar(aes(x=category, ymin=mean-sd, ymax=mean+sd), width=0.3, size= 2.1, color="chocolate")













