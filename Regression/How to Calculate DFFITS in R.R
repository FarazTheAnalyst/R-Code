# In statistics, we often want to know how influential 
# different observations are in regression models.

# Step 1: Build a Regression Model
# load the dataset
data(mtcars)

# fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)

# view model summary
summary(model)

# Step 2: Calculate DFFITS for each Observation
# calculate DFFITS for each observation in the model
dffits <- as.data.frame(dffits(model))

# calculate DFFITS for each observation in the model
dffits

# find number of predictors in model
p <- length(model$coefficients)-1

# find number of observations
n <- nrow(mtcars)

# calculate DFFITS threshold value
thresh <- 2*sqrt(p/n)
thresh

# sort obsrvation by DFFITS, descending 
dffits[order(-dffits["dffits(model)"]), ]

# step3: visualize the DFFITS for each Observation

# plot DDFITS values for each observation
plot(dffits(model), type = "h")

# add horizontal lines at absolute values for threshold
abline(h=thresh, lty=2)
abline(h=-thresh, lty=2)




















