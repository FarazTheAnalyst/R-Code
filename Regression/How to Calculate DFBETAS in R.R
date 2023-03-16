# In statistics, we often want to know how influential different
# observations are in regression models.

# Step 1: Build a Regression Model
# fit a regression model
model <- lm(mpg~disp+hp, data = mtcars)

# view model summary
summary(model)

# Step 2: Calculate DFBETAS for each Observation
# calculate DFBETAS for each observation in the model
dfbetas <- as.data.frame(dfbetas(model))

# display DFBETAS for each obsrvation
dfbetas

# find number of observations
n <- nrow(mtcars)

# calculate DFBETAS threshold value
thresh <- 2/sqrt(n)
thresh

# Step 3: Visualize the DFBETAS
# specify 2 rows and 1 clumn in plotting region
par(mfrow=c(2, 1))

# plot DFBETAS for disp with threshold lines
plot(dfbetas$disp, type = "h")
abline(h=thresh, lty = 2 )
abline(h = -thresh, lty = 2)

# plot DFBETAS for hp with threshold lines
plot(dfbetas$hp, type = "h")
abline(h=thresh, lty=2)
abline(h=-thresh, lty=2)
