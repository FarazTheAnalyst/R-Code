# create data frame
df <- data.frame(a = c(2, 3, 3, 5, 6, 9, 14, 15, 19, 21, 22, 23),
                 b = c(23, 24, 24, 23, 17, 28, 38, 34, 35, 39, 41, 43),
                 c = c(13, 14, 14, 14, 15, 17, 18, 19, 22, 20, 24, 26),
                 d = c(6, 6, 7, 8, 8, 8, 7, 6, 5, 3, 3, 2))

# correlation  between two variables
cor(df$a, df$b)

# correlation between multiple variables
cor(df[, c("a","b", "c")])

# correlation between all variables
cor(df)

# correlation between only numerical variables
cor(df[, unlist(lapply(df, is.numeric))])

# visualize correlations
# install and load psych package
install.packages("psych")
library("psych")

# create pairs plot 
pairs.panels(df)





