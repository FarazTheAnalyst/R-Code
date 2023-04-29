# Example: Set Number of Bins for Histogram in ggplot2
# make this example reproducible
set.seed(0)

# create data frame with 10,000 random values that follow Poisson distribution
df <- data.frame(values=rpois(n=10000, lambda = 2))

# view first five rows of data frame
head(df)

library("ggplot2")

ggplot(df, aes(x=values)) + 
  geom_histogram(fill="steelblue", col="black")

library("ggplot2")

ggplot(df, aes(x=values)) + 
  geom_histogram(fill="steelblue", col="black", bins=10)

library("ggplot2")

ggplot(df, aes(x=values)) + 
  geom_histogram(fill="steelblue", col="black", bins = 5)
