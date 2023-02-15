library("dplyr")
library("ggplot2")
install.packages("ggthemes")
library("ggthemes")

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(category=rep(c("A", "B", "C", "D", "E"), each = 10),
                              value=runif(50, 10, 20))

# create summary data frame
df_summary <- df %>% 
  group_by(category) %>% 
  summarize(mean=mean(value),
            sd =- sd(value))
df_summary

# plot mean value of each category with error bars
ggplot(df_summary) +
  geom_bar(aes(x=category, y=mean), stat='identity') +
             geom_errorbar(aes(x=category, ymin=mean-sd, ymax=mean+sd), width =0.3) +
  theme_tufte()
# define vector of packages to load
some_packages <- c("ggplot2", "dplyr", "ggthemes")

# load all packages at once
lapply(some_packages, library, character.only = TRUE)

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(category=rep(c("A", "B", "C", "D", "E"), each = 10),
                 value=runif(50, 10, 20))

#create summary data frame
df_summary <- df %>%
  group_by(category) %>%
  summarize(mean=mean(value),
            sd=sd(value))

#plot mean value of each category with error bars
ggplot(df_summary) +
  geom_bar(aes(x=category, y=mean), stat='identity') +
  geom_errorbar(aes(x=category, ymin=mean-sd, ymax=mean+sd), width=0.3) +
  theme_tufte()














