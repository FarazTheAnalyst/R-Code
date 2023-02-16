# spearman rank correlation between vectors
# define data
x <- c(70, 78, 90, 87, 84, 86, 91, 74, 83, 85)
y <- c(90, 94, 79, 86, 84, 83, 88, 92, 76, 75)

# calculate spearman rank correlation between x and y
cor.test(x, y, method="spearman")

# Spearman Rank Correlation Between Columns in Data Frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'),
                 points=c(67, 70, 75, 78, 73, 89, 84, 99, 90, 91),
                 assists=c(22, 27, 30, 23, 25, 31, 38, 35, 34, 32))

# calculate spearman rank correlation between x and y
cor.test(df$points, df$assists, method = "spearman")











