# A lack of fit test is used to determine whether or not a
# full regression model offers a significantly better fit 
# to a dataset than some reduced version of the model.

# Step 1: Create & Visualize a Dataset
# make this example reproducible
set.seed(1)

# create dataset
df <- data.frame(hours = runif(50, 5, 15), score=50)
df$score = df$score + df$hours^3/150 + df$hours*runif(50, 1, 2)

# view first six rows of data
head(df)

# load ggplot2 visualization package
library("ggplot2")

# create scatterplot
ggplot(df, aes(x=hours, y=score)) + 
  geom_point()

# Step 2: Fit Two Different Models to the Dataset
# fit full model
full <- lm(score ~ poly(hours, 2), data = df)

# fit reduced model
reduced <- lm(score ~ hours, data = df)

# Step 3: Perform a Lack of Fit Test
# lack of fit test
# anova of fit test
anova(full, reduced)

# Step 4: Visualize the Final Model
ggplot(df, aes(x=hours, y=score)) +
  geom_point() +
  stat_smooth(method = "lm", formula = y ~ poly(x, 2), size = 1) +
  xlab("Hours Studied") +
  ylab("Score")




















