# Example 1: How to Use aov() in R
# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(program = rep(c("A", "B", "C"), each=30),
                 weight_loss = c(runif(30, 0, 3),
                                 runif(30, 0, 5),
                                 runif(30, 1, 7)))

# fit one-way anova using aov()
fit <- aov(weight_loss ~ program, data = df)

# view results
summary(fit)

# Example 2: How to Use anova() in R
# make this example reproducible
set.seed(0)

# create dataset
df <- data.frame(hours = runif(50, 5, 15), score=50)
df$score = df$score + df$hours^3/150 + df$hours*runif(50, 1, 2)

# view head of data
head(df)

# fit full model
full <- lm(score ~ poly(hours, 2), data = df)

# fit reduced model
reduced <- lm(score ~ hours, data = df)

# perform lack of fit test using anova()
anova(full, reduced)


















