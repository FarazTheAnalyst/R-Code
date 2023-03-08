# Many statistical tests (like a one-way ANOVA or two-way ANOVA)
# make the assumption that the variance among several groups is equal.

# One way to formally test this assumption is to use Levene's Test, which
# tests whether or not the variance among two or more groups is equal

# make this example reproducible 
set.seed(0)

# create data frame
data <- data.frame(program = rep(c("A", "B", "C"), each = 30),
                   weight_loss = c(runif(30, 0, 3),
                                   runif(30, 0, 5),
                                   runif(30, 1, 7)))

# view first six rows of data frame
head(data)

# load car package
library("car")

# conduct levene's test for equality of variances
leveneTest(weight_loss ~ program, data = data)


# visualizing the differences in Variances
boxplot(weight_loss ~ program,
        data = data,
        main="Weight loss Distribution by Program",
        xlab = "Program",
        ylab = "Weight_loss", 
        col = "steelblue",
        border = "black")
# 