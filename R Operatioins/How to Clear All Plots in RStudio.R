# clear all plots in Rsudio
# create some vectors
x <- c(1, 1, 3, 4, 6, 7, 9, 10, 14, 19)
y <- c(3, 5, 5, 4, 6, 9, 10, 14, 13, 14)
z<- c(14, 14, 13, 10, 6, 9, 5, 4, 3, 5)

# create several scatterplots
plot(x, y)
plot(x, z)
plot(y, z)

# clear all plots
dev.off(dev.list()["RStudioGD"])

# Example 2: Clear All Plots in RStudio (And Suppress Any Errors)
# attempt to clear all plots
dev.off(dev.list()["RSstudioGD"])

# attempt to clear all plot (suppress error if not plots exist)
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE)
