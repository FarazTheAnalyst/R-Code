# make this example reproducible 
set.seed(10)

# create dataset
data <- data.frame(technique = rep(c("A", "B", "C"), each = 30),
                   current_grade = runif(90, 65, 95),
                   exam = c(runif(30, 80, 95), runif(30, 70, 95), runif(30, 70, 90)))

# view first lines of dataset
head(data)

# Step 1: Explore the Data
summary(data)

# load dplyr
library("dplyr")

data %>% 
  group_by(technique) %>% 
  summarise(mean_grade = mean(current_grade),
            sd_grade = sd(current_grade),
            mean_exam = mean(exam),
            sd_exam = sd(exam))

# We can also visualize the distribution of exam scores based on
# studying technique by using boxplots:
boxplot(exam ~ technique,
        data = data,
        main = "Exam Score by Studying Technique",
        xlab = "Studying Techique",
        ylab = "Exam Score",
        col = "steelblue",
        border = "black")

# Similarly, we can also use boxplots to visualize the distribution of 
# current grades based on studying technique:
boxplot(current_grade ~ technique,
        data = data,
        main = "Current Grade by Studying Technique",
        xlab = "Studying Grade",
        ylab = "Currecnt Grade",
        col = "steelblue",
        border = "black")

# To verify that the covariate and the treatment are independent,
# we can run an ANOVA using current grade as the response variable
# and studying technique as the predictor variable:

# fit anova model
anova_model <- aov(current_grade ~ technique, data = data)

# view summary of anova model
summary(anova_model)

# to verify that there is homogeneity of variance among the groups,
# we can conduct Levene's Test:

# load car library to cunduct Levene's Test
library(car)

# conduct Levene's Test
leveneTest(exam~technique, data = data)
# load car library
library("car")

# fit ANOVA model
ancova_model <- aov(exam ~ technique + current_grade, data = data)

# view summary of mdoel
Anova(ancova_model, type = "III")

# Step 4: Post Hoc Tests

# load the multcomp library
library(multcomp)

# fit the AVCOVA model
ancova_model <- aov(exam ~ technique + current_grade, data = data)

# define the post hoc comparisons to make 
postHocs <- glht(ancova_model, linfct = mcp(technique = "Tukey"))

# view a summary of the post hoc comparisons
summary(postHocs)

# view the confidence intervals associated with the multiple comparisons
confint(postHocs)






























