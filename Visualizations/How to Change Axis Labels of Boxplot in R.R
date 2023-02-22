# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(A=rnorm(1000, mean = 5),
                 B=rnorm(1000, mean = 10),
                 C=rnorm(1000, mean=15))

# view head of data frame
head(df)

# change axis labels of boxplot in Base R
# create boxplot
boxplot(df)

# create boxplots with specific x-axis names
boxplot(df, names = c("Team A", "Team B", "Team C"))

# change axis labels of boxplot in ggplot2
library(reshape2)

# reshape data frame to long format
df_long <- melt(df)

# view head of long data frame
head(df_long)

library(ggplot2)

# specify x-axis names to use
levels(df_long$variable) <- c("Team A", "Team B", "Team C")

# create box plot with specific x-axis labels
ggplot(df_long, aes(variable, value)) +
  geom_boxplot()



















