# make this example reproducible 
set.seed(1)

# define data 
x1 <- rnorm(1000, mean = 0.6, sd = 0.1)
x2 <- rnorm(1000, mean = 0.4, sd = 0.1)

# plot two histograms in same graph
hist(x1, col="wheat")
hist(x2, col="whitesmoke", add = TRUE)

# make this example reproducible
set.seed(1)

# define data
x1 <-  rnorm(1000, mean = 0.6, sd=0.1)
x2 <- rnorm(1000, mean=0.4, sd=0.1)

# plot two histograms in same graph
hist(x1, col=rgb(0, 0, 0, 0.2), xlim = c(0, 1),
     xlab = "Values", ylab = "Frequency", main = "Histogram for two varibles")
hist(x2, col=rgb(1, 0, 0, 0.2), add=TRUE)

# make this example reproducible
set.seed(1)

# define data
x1 <- rnorm(1000, mean=0.6, sd=0.1)
x2 <- rnorm(1000, mean=0.4, sd=0.1)

# plot two histograms in same graph
hist(x1, col=rgb(0, 0, 0, 0.2), xlim = c(0, 1),
     xlab = "Values", ylab = "Frequency", main = "Histogram for two variables")
hist(x2, col = rgb(1, 0, 0, 0.2), add=TRUE)

# add legend
legend("topright", c("Vraibles 1", "Varible 2"), 
       fill = c(rgb(0, 0, 1, 0.2), rgb(1, 0, 0, 0.2)))
















