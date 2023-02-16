# create data frame
df <- data.frame(hours=c(1, 1, 3, 2, 4, 3, 5, 6),
                 prac_exams=c(4, 3, 3, 2, 3, 2, 1, 4),
                 score=c(69, 74, 74, 70, 89, 85, 99, 90))

# view data frame
df
# calculate pearson correlation coefficient between two variables
# calculate pearson correlation coefficient between hours score
cor(df$hours, df$score)

# calculate Pearson correlation coefficient and ignore any rows with NA
cor(df$hours, df$score, use='complete.obs')

# calculate Pearson correlation coefficient between all numeric variables
cor(df)

# calculate spearman correlation coefficient between two variables
cor(df$hours, df$prac_exams, method = "spearman", use = "complete.obs")

# calculate Kendall's correlation coefficient between hours and prac_exams
cor(df$hours, df$prac_exams, method = "kendall", use="complete.obs")















