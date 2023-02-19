# create data frame
df = data.frame(score = c(91, 93, 72, 87, 86, 73, 68, 87, 78, 99, 95, 76, 84, 96, 76, 80, 83, 84, 73, 74),
                hours = c(16, 6, 3, 1, 2, 3, 2, 5, 2, 5, 2, 3, 4, 3, 3, 3, 4, 3, 4, 4),
                prep = c(3, 4, 0, 3, 4, 0, 1, 2, 1, 2, 3, 3, 3, 2, 2, 2, 3, 3, 2, 2),
                grade = c(70, 88, 80, 83, 88, 84, 78, 94, 90, 93, 89, 82, 95, 94, 81, 93, 93, 90, 89, 89))

# view first six rows of data
head(df)

# calculate mahalanobis distance for each observation
mahalanobis(df, colMeans(df), cov(df))

# create new column in data frame to hold Mahalanobis distances
df$mahal <- mahalanobis(df, colMeans(df), cov(df))

# create new column in data frame to hold p-value for each Mahalanobis distance
df$p <- pchisq(df$mahal, df=3, lower.tail = FALSE)

# view data frame, p value leass than 0.001 is outlier
df
