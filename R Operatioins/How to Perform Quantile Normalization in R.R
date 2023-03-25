# Example: Quantile Normalization in R
# make this example reproducible
set.seed(0)

# create data frame with two columns
df <- data.frame(x=rnorm(1000),
                 y=rnorm(1000))

# view first six rows of data frame
head(df)

# calcualte quantiles for x and y
sapply(df, function(x) quantile(x, probs = seq(0, 1, by=1/4)))

library(preprocessCore)

# perform quantile normalization
df_norm <- as.data.frame(normalize.quantiles(as.matrix(df)))

# rename data frame columns
names(df_norm) <- c("x", "y")

# view first six row of new data frame
head(df_norm)

# calculate quantiles for x and y
sapply(df_norm, function(x) quantile(x, probs = seq(0, 1, 1/4)))
