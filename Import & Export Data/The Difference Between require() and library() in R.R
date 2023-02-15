# attempt to load mlbench library
library("mlbench")

# load Boston Housing dataset mlbench is not already installed , we receive an error
data(BostonHousing)

# view summary o Boston Housing dataset
summary(BostonHousing)

# View total number of rows in Boston Housin dataset

# attemp to load mlbench library
require(mlbench)

# load Boston Housing dataset
data(BostonHousing)

# view summary of Boston Housing dataset
summary(BostonHousing)

# view total number of rows in Boston Housing dataset
nrow(BostonHousing)

# check if ggplot2 is installed
system.file(package="ggplot2")

# check if mlbench is installed 
system.file(package = "mlbench")







