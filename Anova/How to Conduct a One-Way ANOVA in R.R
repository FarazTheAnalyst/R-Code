# A one-way ANOVA is used to determine whether or not there
# is a statistically significant difference between the means
# of three or more independent groups.
# This type of test is called a one-way ANOVA because we are 
# analyzing how one predictor variable impacts a response variable.

# make this example reprodcible
set.seed(0)

# create data frame
data <- data.frame(program = rep(c("A", "B", "C"), each = 30),
                   weight_loss = c(runif(30, 0, 3),
                                   runif(30, 0, 5),
                                   runif(30, 1, 7)))

# view first six rows of data frame
head(data)

# exploring the data
# load dplyr package
library(dplyr)

# find mean and standard deviation of weight loss for each treatment group
data %>% 
  group_by(program) %>% 
  summarise(mean = mean(weight_loss),
            sd = sd(weight_loss))

# create boxplots
boxplot(weight_loss ~ program,
         data = data,
         main = "Weight Loss Distribution by Program",
         xlab = "Program",
         ylab = "Weight Loss",
         col = "skyblue",
        border = "black")

# fit the one-way ANOVA model
model <- aov(weight_loss ~ program, data = data )

# view the model output
summary(model)

plot(model)

# load car package 
library("car")

# conduct Leven's Test for equality of variances
leveneTest(weight_loss ~ program, data = data)

# perform Tukey's Test for multiple comparisons
TukeyHSD(model, conf.level = .95)

# create confidence interval for each compaprison
plot(TukeyHSD(model, conf.level = .95), las = 2)












