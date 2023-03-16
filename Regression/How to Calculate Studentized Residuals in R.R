# A studentized residual is simply a residual divided by its estimated
# standard deviation.
# In practice, we typically say that any observation in a dataset 
# that has a studentized residual greater than an absolute value
# of 3 is an outlier.

# Example: Calculating Studentized Residuals in R
# build simple linear regression model
model <- lm(mpg ~ disp, data = mtcars)

# load package
library("MASS")

# calculate studentized residuals
stud_resids <- studres(model)

# head first three studentized residuals
head(stud_resids, 3)

# plot predictor variable vs. studentized residuals
plot(mtcars$disp, stud_resids, ylab="Studentized Residuals", xlab="Displacement")

# add horizontal line at 0
abline(0, 0)

# add studentized residuals to original dataset
final_data <- cbind(mtcars[c("mpg", "disp")], stud_resids)

# view fianl dataset
head(final_data)

# We can then sort each observation from largest to smallest
# according to its studentized residual to get an idea
# of which observations are closest to being outliers:

# sort studentized residuals descending 
final_data[order(-stud_resids), ]























