# make this example reproducible
set.seed(10)

# load boot library
library(boot)

# define  dataset
x <- c(12, 14, 14, 15, 18, 21, 25, 29, 32, 35)

# define function to calculate mean
meanFUNC <- function(x, i){mean(x[i])}

# calculate standard error using 100 bootstapped samples
boot(x, meanFUNC, 100)

# write your own formula
# make this example reproducible
set.seed(10)

# load boot library
library("boot")

# define dataset
x <- c(12, 14, 14, 15, 18, 21, 25, 29, 32, 35)
mean(replicate(100, sd(sample(x, replace = T))/sqrt(length(x))))
  







