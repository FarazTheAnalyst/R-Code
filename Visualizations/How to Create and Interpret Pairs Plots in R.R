# pairs plot of all variables
# make this example reproducible
set.seed(0)

# create data frame
var1 <- rnorm(1000)
var2 <- var1 + rnorm(100, 0, 2)
var3 <- var2 - rnorm(1000, 0, 5)

df <- data.frame(var1, var2, var3)

# view data frame
df

# careate pairs plot
pairs(df)

# paris plot of specific variables
# create paris plot for var1 and var2 only
pairs(df[, 1:2])

# modify the aesthetics of pairs plot
pairs(df,
      col="blue", #modify color
      labels =c("First", "Second", "Third"), #modify labels
      main =  "Custom Title") #modify title

# obtaining correlations with ggpairs
# install necessary librarries
install.packages("ggplot2")
install.packages("GGally")

# load librarries
library("ggplot2")
library("GGally")

# create paris plot
ggpairs(df)























