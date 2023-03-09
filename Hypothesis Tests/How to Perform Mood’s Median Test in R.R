# Mood's Median Test is used to compare the medians of 
# two or more independent groups.

# Example: Mood's Median Test in R
# Suppose a teacher wants to know whether or not two different studying
# methods produce different exam scores among her class of students.
# To test this, she randomly assigns 10 students to use one studying
# method and another 10 students to use another. After two weeks,
# each student takes the same exam.

# Example: Mood's Median Test in R

# create the data frame
method = c(rep("method1", 10), rep("method2", 10))
score = c(75, 77, 78, 83, 83, 85, 89, 90, 91, 97, 77, 80, 84, 84, 85, 90, 92, 92, 94, 95)
examData = data.frame(method, score)

# view exam data
examData

# install. & load the coin library
install.packages("coin")
library("coin")

# perform Mood's Median Test
median_test(score ~ method, data = examData)

# perform Mood's Meidan Test
# By default, this function assigns a score of 0 to observations 
# that are exactly equal to the median. However, you can 
# specify this value to instead be 0.5 or 1 by using
# the mid.score argument.
median_test(score ~ method, mid.score="0.5", data = examData)

























