# This error may occur for three reasons:
# 1. You are creating plots in both base R and ggplot2 in the same session.
# 2. Your version of ggplot2 is not compatible with your version of R.
# 3. Your graphics settings are preventing new plots from being created. 
# How to Reproduce the Error
library("ggplot2")

# attempt to create scatterplot
ggplot(mtcars, aes(x=mpg, y=hp)) +
  geom_point()

# Method #1: Fix the Error by Using dev.off()
dev.off()

# Method #2: Fix the Error by Restarting RStudio

CMethod #3: Fix the Error by Reinstalling ggplot2
# uninstall ggplot2
remove.packages("ggplot2")

# install.ggplot
install.packages("ggplot2")
