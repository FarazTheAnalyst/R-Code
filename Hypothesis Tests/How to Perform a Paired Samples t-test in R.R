# A paired samples t-test is a statistical test that compares
# the means of two samples when each observation in one sample
# can be paired with an observation in the other sample.

# create the dataset
data <- data.frame(score = c(85 ,85, 78, 78, 92, 94, 91, 85, 72, 97,
                             84, 95, 99, 80, 90, 88, 95, 90, 96, 89,
                             84, 88, 88, 90, 92, 93, 91, 85, 80, 93,
                             97, 100, 93, 91, 90, 87, 94, 83, 92, 95),
                   group=c(rep("pre", 20), rep("post", 20)))

# view the dataset
data

# visualize the differences
# load dplyr library
library("dplyr")

# find sample size, mean, and satandard deviation for each group
data %>% 
  group_by(group) %>% 
  summarize(
    count = n(),
    mean = mean(score),
    sd = sd(score)
  )

# we can aslo boxplots using the boxplot() function
boxplot(score ~ group,
        data = data,
        main = "Test Scores By Group", 
        xlab = "Group",
        ylab = "Score", 
        col = "steelblue",
        border = "black")


# To find out if the difference between the means for these two
# groups is statistically significant, we can proceed to conduct
# a paired t-test.

# conduct a Paired t-test

# Before we conduct the paired t-test, we should check that the
# distribution of differences is normally (or approximately normally)
# distributed. To do so, we can create a new vector defined as the
# difference between the pre and post scores, and perform a
# shapiro-wilk test for normality on this vector of values

# define new vector for differences between post and pre scores
differences <- with(data, score[group == "post"] - score[group == "pre"])

# perform shapiro-wilk test for normality on this  vector of values
shapiro.test(differences)

# We can use the following code to conduct a paired t-test:
t.test(score ~ group, data = data, paired = TRUE)
























