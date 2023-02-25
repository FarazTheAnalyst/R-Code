# how to create a biplot in R
# view first six rows of USArrests dataset
head(USArrests)

# perform PCA
results <- princomp(USArrests)

# visualize results of PCA in plot
biplot(results)

# create biplot with custom appearance 
biplot(results,
       col=c("blue", "red"),
       cex=c(1, 1.3),
       xlim=c(-.4, .4),
       main="PCA Rsults",
       xlab="First Component",
       ylab="Second Component",
       expand=1.2)
