# Welch's ANOVA is an alternative to the typical one-way ANOVA when the
# assumption of equal variances is violated.
# create data frame
df <-data.frame(group = rep(c('A','B', 'C'), each=10),
                score = c(64, 66, 68, 75, 78, 94, 98, 79, 71, 80,
                          91, 92, 93, 85, 87, 84, 82, 88, 95, 96,
                          79, 78, 88, 94, 92, 85, 83, 85, 82, 81))

# view first six rows of data frame
head(df)

# perform Barlett's test
bartlett.test(score ~ group, data = df)

# perform Welch's ANOVA
oneway.test(score ~ group, data = df, var.equal = FALSE)
