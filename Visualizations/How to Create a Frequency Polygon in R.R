# basic frequency polygon
library("ggplot2")

# make this example reproducible
df <- data.frame(index=1:100,
                 value=rnorm(100, mean=50, sd=10))

# create frequency polygon
ggplot(df, aes(value)) +
  geom_freqpoly()

# frequency polygon with custom bins
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(index=1:100,
                 value=rnorm(100, mean=50, sd=10))

# create frequency polygon
ggplot(df, aes(value)) +
  geom_freqpoly(bins=10)

# Frequency Polygon with fill color
# to use differen color we'll need to instead use the geom_area()
library("ggplot2")

# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(index=1:100,
                 value=rnorm(100, mean=50, sd=10))

# view data frame
df

# create frequency polygon filled with custom color
ggplot(df, aes(value)) +
  geom_area(aes(y=..count..), bins=10, stat = "bin", fill="steelblue")




















