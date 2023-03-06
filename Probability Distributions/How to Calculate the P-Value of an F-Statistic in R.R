# here is how to find the p-value associated with an F-statistic of 5,
# with degrees of freedom 1 = 3 and degrees of freedom 2 = 14
pf(5, 3, 14, lower.tail = FALSE)

# calculating p-value form F-statistics
# create dataset
data <- data.frame(study_hours = c(3, 7, 16, 14, 12, 7, 4, 19, 4, 8, 8, 3),
                   prep_exams = c(2, 6, 5, 2, 7, 4, 4, 2, 8, 4, 1, 3),
                   final_score = c(76, 88, 96, 90, 98, 80, 86, 89, 68, 75, 72, 76))

# view first sex rows of dataset
head(data)

# fit regression model
model <- lm(final_score ~ study_hours + prep_exams, data = data)

# view ouput of the mdoel
summary(model)

# calculate this equivalent p-value ourselves
pf(5.091, 2, 9, lower.tail = FALSE)
