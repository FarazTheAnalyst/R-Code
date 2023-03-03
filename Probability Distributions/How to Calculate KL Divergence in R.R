# define two probability distributions
P <- c(.05, .1, .2, .05, .15, .25, .08, .12)
Q <- c(.3, .1, .2, .1, .1, .02, .08, .1)
# install and load packages
install.packages("philentropy")
library("philentropy")

# rbind distributions into one matrix
x <- rbind(P, Q)
x

# calculate KL divergence
KL(x, unit="log")

# KL divergence is not a symmetric metric. if we calculate the KL 
# divergence of districbtion Q 
# FROM distribution P, we will likely get a different value

library(philentropy)

# rbind distributions into one matrixx <- 
x <- rbind(Q, P)
x

# calculate KL divergence
KL(x, unit = "log")


# to calculate the KL divergence in 
# terms of bits, you can instead use log2 in the unit argument

library("philentropy")

# rbind distributions into one matrix
x <- rbind(P, Q)
x

# calculate KL divergence (in bits)
KL(x, unit = "log2")





















