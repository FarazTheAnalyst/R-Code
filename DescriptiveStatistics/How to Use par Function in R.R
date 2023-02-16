# define plot area as four rows and two columns
par(mfrow = c(4, 2))

# create plots
plot(1:5)
plot(1:20)
plot(1:9)
plot(1:15)
plot(1:7)
plot(1:11)
plot(1:6)
plot(1:17)

# Display Multiple Plots with par()
#define plot area as three rows and one column
par(mfrow=c(3, 1))

#create plots
plot(1:5, pch=21, col='red')
plot(1:10, pch=18, col='blue')
plot(1:20, pch=19, col='green')

# Specify Margins of Plots with mar()
# The default is mar = c(5.1, 4.1, 4.1, 2.1)
#define plot area with tiny bottom margin and huge right margin
par(mfrow=c(3, 1), mar =c(0.5, 4, 4, 20))

# #create plots
plot(1:5, pch=19, col='red')
plot(1:10, pch=19, col='blue')
plot(1:20, pch=19, col='green')

# Specify Text Size of Plots with cex()
# define plot area with large axis labels
par(mfrow = c(3, 1), mar = c(0.5, 4, 4, 20), cex = 3, cex.lab = 3)

# create plot
plot(1:5, pch = 19, col = "red")
plot(1:10, pch=19, col="blue")
plot(1:10, pch=10, col="green")

# reset par() options
dev.off()





