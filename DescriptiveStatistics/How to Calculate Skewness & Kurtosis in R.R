# skewness & kurtosis in R
data=c(88, 95, 92, 97, 96, 97, 94, 86, 91, 95, 97, 88, 85, 76, 68)

hist(data, col="steelblue")

install.packages("moments")
library("moments")

# calculate skewness
skewness(data)

# calculate kutosis
kurtosis(data)

# using jarque.test()
# Null Hypothesis: The dataset has a skewness 
# and kurtosis that matches a normal distribution.
# Alternative Hypothesis: The dataset has a skewness and kurtosis 
# that does not match a normal distribution.
library("moments")

# if p-value is not less than  alpha=.05, we fail to reject the null
# hypothesis
jarque.test(data)
