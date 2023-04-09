# How to Reproduce this Error
# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 7, 8, 9, 10),
                 y=c(12, 17, 27, 39, 50, 57, 66, 80))

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) +
  geom_point()

# Potential Fix #1: Load the ggplot2 Package
library("ggplot2")

# crete scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) +
  geom_point()

# Potential Fix #2: Install ggplot2
install.packages("ggplot2")

# load ggplot2
library("ggplot2")

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) +
  geom_point()

# Potential Fix #3: Install ggplot2 with Dependencies
# install ggplot2 and all dependencies
install.packages("ggplot2", dependencies = TRUE)

# load ggplot2
library("ggplot2")

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) + 
  geom_point()

# Potential Fix #4: Remove & Re-Install ggplot2
# remove ggplot2
remove.packages("ggplot2")

# install ggplot2
intstall.packages("ggplot2")

# load ggplot2
library("ggplot2")

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) +
  geom_point()

# Potential Fix #5: Run the Correct Code Chunk
# If none of the previous fixes work, you may need to simply 
# verify that you're running the correct code chunk in R that 
# actually installs and loads the ggplot2 package.











