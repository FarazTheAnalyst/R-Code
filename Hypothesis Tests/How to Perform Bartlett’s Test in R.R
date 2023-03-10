# Bartlett's Test is a statistical test that is used to determine
# whether or not the variances between several groups are equal.

# create data frame
df <- data.frame(group = rep(c("A", "B", "C"), each = 10),
                 score = c(85, 86, 88, 75, 78, 94, 98, 79, 71, 80,
                           91, 92, 93, 85, 87, 84, 82, 88, 95, 96,
                           79, 78, 88, 94, 92, 85, 83, 85, 82, 81))

# view data frame
df

# perform Barlett's test
bartlett.test(score ~ group, data = df)
