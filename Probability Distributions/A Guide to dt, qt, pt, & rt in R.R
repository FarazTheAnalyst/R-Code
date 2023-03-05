# dt
# find the value of the student t distribution pdf at x=0 with 20 degress
# freedom
dt(x=0, df=20)

# by default , R assums the first argument is x and the second argument
# is df
dt(0, 20)

# find the value of the student t distribution pdf at x=1 with 30 degrees 
# of freedom
dt(1, 30)

# creating a sequence of 100 equally spaced numbers between -4 and 4
x <- seq(-4, 4, length=100)

# create a vector of values that shows the height of the probability distribution
# for each value in x, using 20 degress of freedom
y <- dt(x=x, df=20)

# plot x and y as a scatterplot with connected lines (type="l") and add 
# an x-axis with custom labels
plot(x, y, type="l", lwd=2, axes = FALSE, xlab="", ylab = "")
axis(1, at=-3:3, labels=c("-3c", "-2", "-1s", "mean", "1s", "2s", "3s"))

# pt
# EXAMPLE 1.  Find the area to the left of a t-statistic with value of
# -0.785 and 14 degrees of freedom.
pt(-0.785, 14)

# Example 2:  Find the area to the right of a t-statistic with value of -0.785
# and 14 degrees of freedom.
# the folloing approaches produce equavalent results

# 1 - area to the left
1 - pt(-0.785, 14)

# area to the right
pt(-0.785, 14, lower.tail = FALSE)

# Find the total area in a Student t distribution with 14 degrees of 
# freedom that lies to the left of -0.785 or to the right of 0.785.
pt(-0.785, 14) + pt(0.785, 14, lower.tail = FALSE)


# qt
# find the t-score the 99th quantile of the Student t distribution with
# df = 20
qt(.99, df=20)

# find the t-score of the 95th quantile of the student t distribution with
# df=20
qt(.95, df=20)

# #find the t-score of the 90th quantile of the Student 
# t distribution with df = 20
qt(.90, df=20)

# rt
# #generate a vector of 5 random variables
# that follow a Student t distribution with df =20
rt(n=5, df =30)

# #generate a vector of 1000 random variables that follow a Student t distribution
#with df = 40

narrowDistribution <- rt(1000, 40)

#generate a vector of 1000 random variables that follow a Student t distribution
#with df = 5
wideDsitribution <- rt(1000, 5)

#generate two histograms to view these two distributions side by side, and specify
#50 bars in histogram,
par(mfrow=c(1, 2)) #one row , tow columns
hist(narrowDistribution, breaks=50, xlim=c(-6, 4))
hist(wideDsitribution, breaks=50, xlim = c(-6, 4))























