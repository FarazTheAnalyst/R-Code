# Example: How to Avoid Warning stat_bins() using bins = 30
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(my_values = rnorm(1000))

# view head of data frame
head(df)

# create histogram
ggplot(df, aes(x=my_values)) +
  geom_histogram(col="black", fill="steelblue")

# create histogram with 10 bins
ggplot(df, aes(x=my_values))+
  geom_histogram(col="black", fill="steelblue", bins=10)

# create histogram with 5 bins
ggplot(df, aes(x=my_values)) + 
  geom_histogram(col="black", fill = "steelblue", bins = 5)

