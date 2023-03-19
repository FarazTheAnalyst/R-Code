# If one of the groups in the study is considered the control 
# group, then we should use Dunnett's test as the post-hoc test.

# create data frame
data <- data.frame(technique = rep(c("control", "new1", "new2"), each = 10),
                   score = c(76, 77, 77, 81, 82, 82, 83, 84, 85, 89,
                             81, 82, 83, 83, 83, 84, 87, 90, 92, 93,
                             77, 78, 79, 88, 89, 90, 91, 95, 95, 98))

# view first six rows of data frame
head(data)

# create a boxplot 
boxplot(score~technique,
        data = data,
        main = "Exam Scores by Studying Technique",
        xlab = "Studying Technique",
        ylab = "Exam Scores",
        col = "steelblue",
        border = "black")

# perform  a one-way ANOVA
# fit the one-way ANOVA model
model <- aov(score ~ technique, data = data)

# view model ouput
summary(model)

# load DescTools library
library("DescTools")

# perform Dunnett's Test
DunnettTest(x=data$score, g=data$technique)























