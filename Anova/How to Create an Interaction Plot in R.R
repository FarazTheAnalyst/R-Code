# Example: Interaction Plot in R
# create the data
# make this example reproducible
set.seed(100)

#create data frame
data <- data.frame(gender = rep(c("Male", "Female"), each = 30),
                   exercise = rep(c("None", "Light", "Intense"), each = 10, times = 2),
                   weight_loss = c(runif(10, -3, 3), runif(10, 0, 5), runif(10, 5, 9),
                                   runif(10, -4, 2), runif(10, 0, 3), runif(10, 3, 8)))

# view first six rows of data frame
head(data)

# fit the two-way ANOVA model
model <- aov(weight_loss ~ gender + exercise, data = data)

# view the model output
summary(model)

# create the interactin plot
interaction.plot(x.factor = data$exercise, #x-axis variable
                 trace.factor = data$gender, #variable for lines
                 response = data$weight_loss, #y-axis variable
                 fun = median, #metric to plot
                 ylab = "Weight Loss",
                 xlab = "Exercise Intensity",
                 col = c("pink", "blue"),
                 lty = 1, #line type
                 lwd = 2, #line width
                 trace.label = "Gender")
                 
