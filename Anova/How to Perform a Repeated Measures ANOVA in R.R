# A repeated measures ANOVA is used to determine whether or not
# there is a statistically significant difference between the 
# means of three or more groups in which the same subjects show
# up in each group.

# create data
df <- data.frame(patient=rep(1:5, each=4),
                 drug=rep(1:4, times=5),
                 response=c(30, 28, 16, 34,
                            14, 18, 10, 22,
                            24, 20, 18, 30,
                            38, 34, 20, 44,
                            26, 28, 14, 30))

# perform the repeated measures ANOVA
# fit repeated measures ANOVA model
model <- aov(response~factor(drug)+Error(factor(patient)), data = df)

# view model summary
summary(model)
