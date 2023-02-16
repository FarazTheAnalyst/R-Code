# using summary  with vector
# define vector
x <- c(3, 4, 4, 5, 7, 8, 9, 12, 13, 13, 15, 19, 21)

# summarize values in vector
summary(x)

# #define vector
x <- c(3, 4, 4, 5, 7, 8, 9, 12, 13, 13, 15, 19, 21, NA, NA)

# summarize values in vector, removes NA values automatically
summary(x)

#  Using summary() with Data Frame
#define data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# summarize every column in data frame
summary(df)

# Using summary() with Specific Data Frame Columns
# summarize every column in data frame
summary(df[c("points", "rebounds")])


# Using summary() with Regression Model

#define data
df <- data.frame(y=c(99, 90, 86, 88, 95, 99, 91),
                 x=c(33, 28, 31, 39, 34, 35, 36))

# fit linear regression model
model <- lm(y~x, data=df)
summary(model)

# Using summary() with ANOVA Model
# make this example reproducible
set.seed(0)

# create data frame
data <- data.frame(program=rep(c("A", "B","C"), each = 30),
                   weight_loss = c(runif(30, 0, 3),
                                   runif(30, 0, 5),
                                   runif(30, 1, 7)))

# fit anova model
model <- aov(weight_loss ~ program, data = data)

# summarize model fit
summary(model)
















