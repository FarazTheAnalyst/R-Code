# This error occurs when you attempt to specify the fill
# colors to use in a ggplot2 plot, yet the number of colors
# you specified is different than 1 or different than the total
# number of objects to be filled.

# How to Reproduce the Error
# view first six lines of airquality dataset
head(airquality)

library("ggplot2")

# attempt to create multiple boxplots
ggplot(data = airquality, aes(x=as.character(Month), y=Temp)) +
  geom_boxplot(fill=c("steelblue", "red"))

# We receive an error because there are 5 unique Months
# in the dataset (thus, we will create 5 boxplots) but we 
# only supplied two colors to the fill argument.

# How to Fix the Error
# Method 1: Only Use One Color in Fill Argument
library(ggplot2)
ggplot(data=airquality, aes(x=as.character(Month), y=Temp)) +
  geom_boxplot(fill=c("steelblue"))

# Method 2: Use the Same Number of Colors as the Number of Boxplots

library(ggplot2)
ggplot(data = airquality, aes(x=as.character(Month), y=Temp)) +
  geom_boxplot(fill=c('steelblue', 'red', 'purple', 'green', 'orange'))
