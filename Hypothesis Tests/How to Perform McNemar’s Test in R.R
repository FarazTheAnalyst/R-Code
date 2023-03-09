# McNemar's Test is used to determine if there is a statistically
# significant difference in proportions between paired data.

# Example: McNemar's Test in R
# Suppose researchers want to know if a certain marketing video can
# change people's opinion of a particular law. They survey 100 
# people to find out if they do or do not support the law. Then,
# they show all 100 people the marketing video and survey them 
# again once the video is over.

# create the data
data <- matrix(c(30, 12, 40, 18), nrow = 2,
               dimnames = list("After Video" = c("Support", "Do Not Support"),
                               "Before Video" = c("Support", "Do Not Support")))

# Example: McNemar's Test in R
# Suppose researchers want to know if a certain marketing video can
# change people's opinion of a particular law. They survey 100 people
# to find out if they do or do not support the law. Then, they show 
# all 100 people the marketing video and survey them again once the 
# video is over.

# Perform McnEMAR'S Test with continuity correction
mcnemar.test(data)

# Perfform McNemar's Test without continuity correction 
mcnemar.test(data, correct = FALSE)
