# plotting a confidence interval in R
# make this example reproducible 
set.seed(0)

# create dataet
x <- rnorm(100)
y <- x*2 + rnorm(100)
df <- data.frame(x=x, y=y)

# view first six rows of dataset
head(df)

# fit a linear regression
model <- lm(y ~ x , data = df)

# get predicted y values using regression equation
newx <- seq(min(df$x), max(df$x), length.out=100)
preds <- predict(model, newdata = data.frame(x=newx), interval = "confidence")

# view predicted model
preds

# create plot of x vs.y but don't display individual points (type="n")
plot(y~x, data = df, type= "n")

# add fitted regression line
abline(model)

# add dashed lines for confidence bands
lines(newx, preds[, 3], lty = "dashed", col="blue")
lines(newx, preds[, 2], lty = "dashed", col="blue")

# create plot of x vs. y
plot(y ~ x, data = df, type = "n")

# fill in area between regression line and confidence interval
polygon(c(rev(newx), newx), c(rev(preds[, 3]), preds[, 2]), col = "grey", border = NA)

# add fitted regression line
abline(model)

# add dashed lines for confidence bands
lines(newx, preds[, 3], lty = "dashed", col = "blue")
lines(newx, preds[, 2], lty = "dashed", col = "blue")

# #make this example reproducible
set.seed(0)

#create dataset
x <- rnorm(100)
y <- x*2 + rnorm(100)
df <- data.frame(x = x, y = y)

#fit linear regression model
model <- lm(y ~ x, data = df) 

#get predicted y values using regression equation
newx <- seq(min(df$x), max(df$x), length.out=100)
preds <- predict(model, newdata = data.frame(x=newx), interval = 'confidence')

#create plot of x vs. y
plot(y ~ x, data = df, type = 'n')

#fill in area between regression line and confidence interval
polygon(c(rev(newx), newx), c(rev(preds[ ,3]), preds[ ,2]), col = 'grey', border = NA)

#add fitted regression line
abline(model)

# here's the complete code from start to finish
#add dashed lines for confidence bands
lines(newx, preds[ ,3], lty = 'dashed', col = 'blue')
lines(newx, preds[ ,2], lty = 'dashed', col = 'blue')
















