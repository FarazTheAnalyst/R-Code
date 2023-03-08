# Welch's t-test is used to compare the means between two independent groups
# when it is not assumed that the two groups have equal variances.

# Example: Welch's t-test in R
# A teacher wants to compare the exam scores of 12 students who used an exam
# prep booklet to prepare for some exam vs. 12 students who did not.

# create dataset
booklet <- c(90, 85, 88, 89, 94, 91, 79, 83, 87, 88, 91, 90)
no_booklet <- c(67, 90, 71, 95, 88, 83, 72, 66, 75, 86, 93, 84)

# Before we perform a Welch's t-test, we can first create boxplots to 
# visualize the distribution of scores for each group:
boxplot(booklet, no_booklet, names=c("Booklet","No Booklet"))

# To formally test whether or not the mean scores between the groups are
# significantly different, we can perform Welch's t-test:
#perform Welch's t-test
t.test(booklet, no_booklet)
