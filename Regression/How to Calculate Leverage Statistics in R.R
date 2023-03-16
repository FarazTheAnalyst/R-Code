# an observation is considered to have high leverage if it
# has a value (or values) for the predictor variables that 
# are much more extreme compared to the rest of the observations
# in the dataset.

# Step 1: Build a Regression Model
# load the dataset
data(mtcars)

# fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)

# view model summary
summary(model)

# Step 2: Calculate the Leverage for each Observation
# calculate leverage for eac observation in te model
hats <- as.data.frame(hatvalues(model))

# display leverage stats for each observation
hats

# sort observations by leverage, descending
hats[order(-hats['hatvalues(model)']), ]

# Step 3: Visualize the Leverage for each Observation
# plot leverage values for eac observation
plot(hatvalues(model), type="h")
