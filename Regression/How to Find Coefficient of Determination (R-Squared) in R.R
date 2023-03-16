`# create data frame
df <- data.frame(hours=c(1, 2, 2, 4, 2, 1, 5, 4, 2, 4, 4, 3, 6, 5, 3),
                 prep_exams=c(1, 3, 3, 5, 2, 2, 1, 1, 0, 3, 4, 3, 2, 4, 4),
                 score=c(76, 78, 85, 88, 72, 69, 94, 94, 88, 92, 90, 75, 96, 90, 82))

# view first six rows of data frame
head(df)

# fit regressioni model
model <- lm(score ~hours+prep_exams, data=df)

# fit model summary
summary(model)

# finding out R squared
summary(model)$r.squared
