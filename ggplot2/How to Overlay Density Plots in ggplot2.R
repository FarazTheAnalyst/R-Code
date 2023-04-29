# A density plot is a useful way to visualize the distribution
# of values in a dataset.
# Step 1: Create the Data
# first create a fake dataset with three variables
# make this example reproducible
set.seed(1)

# create data 
df <- data.frame(var1=rnorm(1000, mean=0, sd=1),
                 var2=rnorm(1000, mean=0, sd=3),
                 var3=rnorm(1000, mean=3, sd=2))

# view first six rows of data 
head(df)

# Step 2: Convert the Data from Wide to Long
library(reshape2)

# convert form wide format to long format
data <- melt(df)

# view first six rows
head(data)

# Step 3: Create the Overlaying Density Plots
library(ggplot2)

# create overlaying density plots
ggplot(data, aes(x=value, fill=variable)) + 
  geom_density(alpha=0.25)

# For example, here's what the plots would look like if we increased the alpha value:
library("ggplo2")

# create overlaying density plots
ggplot(data, aes(x=value, fill=variable)) + 
  geom_density(alpha=.7)


