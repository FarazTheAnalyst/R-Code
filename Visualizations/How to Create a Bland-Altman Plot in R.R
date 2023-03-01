# create data
df <- data.frame(A=c(5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 9,
                     10, 11, 13, 14, 14, 15, 18, 22, 25),
                 B=c(4, 4, 5, 5, 5, 7, 8, 6, 9, 7, 7, 11,
                     13, 13, 12, 13, 14, 19, 19, 24))

# head(df)
df

# calculate the difference in  Measurements
# create new column for average measurements
df$avg <- rowMeans(df)

# create new column for difference in measurements
df$diff <- df$A - df$B

# view first six rows of data
head(df)

# calculate the average difference & confidence interval
# find average differece
mean_diff <- mean(df$diff)
mean_diff

# find lower 95% confidence interval limits
lower <- mean_diff - 1.96*sd(df$diff)
lower

# find upper 95% confidence interval limits
upper <- mean_diff + 1.96*sd(df$diff)
upper

# create the Bland-Altman plot
# load ggplot2
library("ggplot2")

# create Bland-Altman plot
ggplot(df, aes(x = avg, y = diff)) +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff) +
  geom_hline(yintercept = lower, color="red", linetype="dashed") +
  geom_hline(yintercept = upper, color="red", linetype="dashed") +
  ggtitle("Bland-Alman Plot") +
  ylab("Difference Between Measurements") +
  xlab("Average Measurements")




















