# A two-way ANOVA ("analysis of variance") is used to determine
# whether or not there is a statistically significant difference
# between the means of three or more independent groups that have 
# been split on two factors.

# make this example reproducible
set.seed(0)

# create data frame
data <- data.frame(gender = rep(c("Male", "Female"), each = 30),
                   exercise = rep(c("None", "Light", "Intense"), each = 10, times = 2),
                   weight_loss = c(runif(10, -3, 3), runif(10, 0, 5), runif(10, 5, 9),
                                   runif(10, -4, 2), runif(10, 0, 3), runif(10, 3, 8)))

# view first six rows of data frame
head(data)

# see how many participants are in each group
table(data$gender, data$exercise)

# exploring the data
# load dplyr package

# find mean and standard devaition of weight loss for each treatment group
data %>% 
  group_by(gender, exercise) %>% 
  summarise(mean = mean(weight_loss),
            sd = sd(weight_loss))

# set margins so that axis labels on boxplot don't get cut off
par(mar=c(8, 4.1, 4.1, 2.1))

# create boxplots
boxplot(weight_loss ~ gender:exercise,
        data = data, 
        main = "Weight Loss Distribution by Group",
        xlab = "Group",
        ylab = "Weight Loss",
        col = "steelblue",
        border = "black",
        las = 2 #make x-axis labels perpendicular
        )

# fit the two-way ANOVA model
model <- aov(weight_loss ~ gender * exercise, data = data)

# view the model ouput
summary(model)

# define model residuals 
resid <- model$residuals

# create histogram of residualsst
hist(resid, main = "Histogram of Residuals", xlab = "Residuals", col = "steelblue")

# load car package
library("car")

# conduct Levene's Test for equality of variances
leveneTest(weight_loss ~ gender * exercise, data = data)

# perform Tukey's Test for multiple comparisons
TukeyHSD(model, conf.level = .95)

# set axis margins so label's don't get cut off
par(mar=c(4.1, 13, 4.1, 2.1))

# create confidence interval for each comparison
plot(TukeyHSD(model, conf.level = .95), las = 2)














