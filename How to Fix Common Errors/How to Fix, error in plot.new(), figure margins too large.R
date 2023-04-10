# This error occurs when the plot panel in RStudio
# is too small for the margins of the plot that you're 
# attempting to create.

# How to Reproduce the Error
# attempt to create scatterplot
plot(1:30)

# Method #1: Fix the Error by Increasing the Size of the Plot Panel
# Method #2: Fix the Error by Using the par() Function
# adjust plot margins
par(mar=c(1,1,1,1))

# create scatterplot
plot(1:30)

# Method #3: Fix the Error by Shutting Down Current Plotting Device
dev.off()
