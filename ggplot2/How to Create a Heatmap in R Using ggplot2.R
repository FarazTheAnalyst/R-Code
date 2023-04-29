# How to Create a Heatmap in R Using ggplot2
# Example: Creating a Heatmap in R
# view first six rows of mtcars
head(mtcars)

# Currently mtcars is in a wide format, but we need to melt
# it into a long format in order to create the heatmap.
# load reshape2 package to use melt() function
library("reshape2")

# melt mtcars into long format
melt_mtcars <- melt(mtcars)

#add column for car name
melt_mtcars$car <- rep(row.names(mtcars), 11)

# view first six rows of melt_mtcars
head(melt_mtcars)

# We can use the following code to create the heatmap in ggplot2:
library("ggplot2")

ggplot(melt_mtcars, aes(variable, car)) + 
  geom_tile(aes(fill=value), colour="white") + 
  scale_fill_gradient(low = "white", high = "red")

# Unfortunately, since the values for disp are much larger 
# than the values for all the other variables in the data frame,
# it's hard to see the color variation for the other variables.

# One way to solve this problem is to rescale the values for each
# variable from 0 to 1 using the rescale() function in the scales()
# package and the ddply() function in the plyr() package:
# load libraries
library(plyr)
library(scales)

# rescale values for all variables in melted data frame
melt_mtcars <- ddply(melt_mtcars, .(variable), transform, rescale = rescale(value))

# create heatmap using rescaled values
ggplot(melt_mtcars, aes(variable, car)) +
  geom_tile(aes(fill=rescale), colour="white") + 
  scale_fill_gradient(low = "white", high = "red")

# We can also change up the colors of the heatmap by changing
# the colors used in the scale_fill_gradient() argument:
# create heatmap using blue color scale
ggplot(melt_mtcars, aes(variable, car)) + 
  geom_tile(aes(fill=rescale), colour="white") + 
  scale_fill_gradient(low="white", high = "steelblue")

# Note that the heatmap is currently ordered by car name.
# We could instead order the heatmap according to the values
# of one of the variables like mpg using the following code:
# define car name as a new column, then order by mpg ascending
mtcars$car <- row.names(mtcars)
mtcars
mtcars$car <- with(mtcars, reorder(car, mpg))
mtcars
melt_mtcars <- melt(mtcars)
melt_mtcars

# rescale values for all variables in melted data frame
melt_mtcars <- ddply(melt_mtcars, .(variable), transform, rescale=rescale(value))

# create heatmap using rescaled values
ggplot(melt_mtcars, aes(variable, car)) + 
  geom_tile(aes(fill=rescale), colour="white") + 
  scale_fill_gradient(low = "white", high = "steelblue")


# define car name as a new column, then order by mpg descending
mtcars$car <- row.names(mtcars)
mtcars$car <- with(mtcars, reorder(car, -mpg))

# melt mtcars into long format
melt_mtcars <- melt(mtcars)

# rescale values for all variables in melted data frame
melt_mtcars <- ddply(melt_mtcars, .(variable), transform, rescale=rescale(value))

# create heatmap using rescaled values
ggplot(melt_mtcars, aes(variable, car)) + 
  geom_tile(aes(fill=rescale), colour="white") + 
  scale_fill_gradient(low="white", high = "purple")

# create heatmap with no axis labels or legend
ggplot(melt_mtcars, aes(variable, car)) + 
  geom_tile(aes(fill=rescale), colour="white") + 
  scale_fill_gradient(low="white", high = "purple") + 
  labs(x="", y="") + 
  theme(legend.position = "none")
