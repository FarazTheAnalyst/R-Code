# Creating Different Types of Plot
plot()  #base graphic function

# Getting an overview of plot
islands
?text
large.islands <- head(sort(islands, decreasing = TRUE), 10)
large.islands                      
plot(large.islands, main = "Land area of continents and islands",
     ylab = "Land area in square miles")
text(large.islands, labels = names(large.islands), adj = c(0.5, 1))

# Adding points and lines to a plot
?faithful
faithful
plot(faithful)

# Adding points
short.eruptions <- with(faithful, faithful[eruptions < 3, ])
plot(faithful)
points(short.eruptions, col = "red", pch = 19)
# Changing the shape of points
?points
pch = 19 # solid circle
pch = 20 # bullet (smaller solid circle)
pch = 21 # Filled circle
pch = 22 # Filled square
pch = 23 # Filled diamond
pch = 24 # Filled triangle, point up
pch = 25 # Filled triangle, point down

# Changing the color
colors()
head(colors(), 10)

# Adding lines to plot
?lines
fit <- lm(waiting ~ eruptions, data = faithful)
fit
plot(faithful)
lines(faithful$eruptions, fitted(fit), col = "blue")
abline(v = 3, col = "purple")
?abline
abline(h = mean(faithful$waiting))
abline(a = coef(fit) [1], b = coef(fit) [2])
abline(fit, col = "red")

# Different plot types
?LakeHuron
LakeHuron
plot(LakeHuron, type = "l", main = "type = \" l \"")
plot(LakeHuron, type = "p", main = "type = \" p \"")
plot(LakeHuron, type = "b", main = "type = \"b\"")
plot(LakeHuron, type = "c", main = "type = \"c\"")
plot(LakeHuron, type = "o", main = "type = \"o\"")
plot(LakeHuron, type = "b", main = "type=\"h\"")

# Using R functions to create more types of plot
with(mtcars, plot(mpg, disp))
with(mtcars, boxplot(disp, mpg))
with(mtcars, hist(mpg))
pairs(iris)

x <- seq(0.5, 1.5, 0.25)
x
?seq
y <- rep(1, length(x))
y
plot(x, y, type = "n")
points(x, y)
?rep

# Controling Plot Options and Arguments
# Adding titles and axis labels
plot(faithful, 
     main = "Eruptions of Old Faithful",
     xlab = "Eruption time (min)",
     ylab = "Wating time to next eruption (min)")

# Changing plot option
# The axes label style
plot(faithful, las = 2)

# The box type
plot(faithful, bty = "n")

# More than one option
plot(faithful, las = 1, bty = "1", col = "red", pch = 19)

# Font size of text and axes
?text
x <- seq(0.5, 1.5, 0.25)
y <- rep(1, length(x))
plot(x, y, main = "Effect of cex on text size")
text(x, y + 0.1, labels = x, cex = x)

plot(x, y, main = "Effect of cex.main, cex.lab and cex.axis",
     cex.main  = 1.25, cex.lab = 1.5,cex.axis = 0.75)

# Putting multiple plots on a single page
old.par <- par(mfrow = c(1, 2))
plot(faithful, main = "Faithful eruptions")
plot(large.islands, main = "Islands", ylab = "Area")
par(old.par)
par(mfcol = c(1, 1))

# Saving Graphics to Image Files
setwd("C:/Users/DELL/Desktop")
setwd("~/")
getwd()
png(filename = "faithful.png")
plot(faithful)
dev.off()

pdf(file = "Rplot%03d.pdf")
pdf(file = "Rplots.pdf")
pdf(file = "R1faithful.pdf")
plot(faithful)
dev.off()


