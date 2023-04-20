# Example 1: Q-Q Plot for Normal Data
library("ggplot2")

# make this example reproducible 
set.seed(1)

# create some fake data that follows a normal distribution 
df <- data.frame(y=rnorm(200))

# create Q-Q plot
ggplot(df, aes(sample=y)) +
  stat_qq() +
  stat_qq_line()

library("ggplot2")

# make this example reproducible
set.seed(1)

# create some fake data that follows a normal distribution
df <- data.frame(y=rnorm(200))

# create  Q-Q plot
ggplot(df, aes(sample=y)) +
  stat_qq(size=2.5, color="red") +
  stat_qq_line()

# Example 2: Q-Q Plot for Non-Normal Data
# make this example reproducible 
set.seed(1)

# create some fake that follows an exponential distribution 
df <- data.frame(y=rexp(200, rate=3))

# create Q-Q plot
ggplot(df, aes(sample=y)) +
  stat_qq() + 
  stat_qq_line()






















