# define plot area as three rows and two columns
par(mfrow=c(3, 2))

# create six plots
plot(1:5, pch=19, col="lightblue")
plot(1:10, pch=19, col="steelblue")
plot(1:10, pch=19, col="chocolate")
plot(1:20, pch=19, col="red")
plot(1:5, pch=19, col="orange")
plot(1:10, pch=19, col="wheat")

# define plot area as three rows and two columns
par(mfrow=c(3, 2))

# create six plots with unique box styles
par(bty="o")
plot(1:5, pch=19, col="lightblue", main="Complete Box")

par(bty="n")
plot(1:10, pch=19, col="steelblue")

par(bty="7")
plot(1:10, pch=19, col="chocolate")

par(bty="L")
plot(1:5, pch=19, col="red")

par(bty="C")
plot(1:10, pch=19, col="orange")
par(bty="U")
plot(1:20, pch=19, col="wheat")

# define plot area and use bottom+left bot style for each plot
par(mfrow=c(3, 2), bty="L")























