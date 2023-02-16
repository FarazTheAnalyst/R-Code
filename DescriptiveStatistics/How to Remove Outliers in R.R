# make this example reproducible
set.seed(0)

# create data frame with three column 'A', "B", "C"
df <- data.frame(A=rnorm(1000, mean=10, sd=3),
                 B=rnorm(1000, mean=20, sd=3),
                 C=rnorm(1000, mean=30, sd=3))

# view first six row of data frame
head(df)

# find absolute value of z-score  for each value in each column
z_scores <- as.data.frame(sapply(df, function(df) (abs(df-mean(df))/sd(df))))

# view first six rows fo z_scores data frame
head(z_scores)

# only keep rows in data frame with all z-scores less than absolute value of 3
no_outliers <- z_scores[!rowSums(z_scores>3), ]

# view row and column of new data frame
dim(no_outliers)

# view no_outliers
no_outliers


# remove outliers using interquertile range
# find Q1, Q3 and interquartile range for values in column A
Q1 <- quantile(df$A, .25)
Q3 <- quantile(df$A, .75)
IQR <- IQR(df$A)

# only keep rows in data frame that have values within 1.5*IQR of Q1 and Q3
no_outliers_iqr <- subset(df, df$A> (Q1 -1.5*IQR) & df$A< (Q3 + 1.5*IQR))

# view row and column count of new data frame
dim(no_outliers_iqr)





