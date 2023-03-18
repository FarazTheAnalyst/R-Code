# In an ANOVA, we have one response variable. However, 
# in a MANOVA (multivariate analysis of variance) we have 
# multiple response variables.

# view first six rows of iris dataset
head(iris)

# fit the MANOVA model
model <- manova(cbind(Sepal.Length, Sepal.Width) ~ Species, data = iris)

# view the results
summary(model)

# to find out exactly how both sepal length and sepal
# width are affected by species
summary.aov(model)

# visualizing Group Means
# install and load gplots library
install.packages("gplots")
library(gplots)

# visualize mean sepal length by species
plotmeans(iris$Sepal.Length ~ iris$Species)
plotmeans(iris$Sepal.Width ~ iris$Species)
