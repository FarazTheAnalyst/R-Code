# Example 1: Create Completely Empty Plot
plot.new()

# Example 2: Create Empty Plot with Axes
plot(NULL, xlab="", ylab="", xaxt="n", yaxt="n",
          xlim=c(0, 10), ylim=c(0, 10))

# Example 3: Create Empty Plot with Axes & Labels
plot(NULL, ylab="y label", xlab="x label", main = "title",
     xlim=c(0, 10), ylim=c(0, 10))
