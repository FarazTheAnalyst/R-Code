# Eta squared is a measure of effect size that is commonly 
# used in ANOVA models.
# It measures the proportion of variance associated with each main
# effect and interaction effect in an ANOVA model and is
# calculated as follows:

# make this example reproducible 
set.seed(0)

data <- data.frame(gender=rep(c("Male", "Female"), each = 30),
exercise=rep(c("None", "Light", "Intense"), each = 10, times=2),
weight_loss=c(runif(10, -3, 3), runif(10, 0, 5), runif(10, 5, 9),
              runif(10, -4, 2), runif(10, 0, 3), runif(10, 3, 8)))

# view first six rows of data frame
head(data)

# see how many participants are in each group
table(data$gender, data$exercise)

# Fit the ANOVA Model
# fit the model ouput
model <- aov(weight_loss ~ gender + exercise, data = data)

# view the model ouput
summary(model)

# calculate Eta Squared 
# load lsr package
library("lsr")

# calculate Eta Squared
etaSquared(model)

















