# A Chi-Square Test of Independence is used to determine whether 
# or not there is a significant association between 
# two categorical variables.

# create table
data <- matrix(c(120, 90, 40, 110, 95, 45), ncol = 3, byrow = TRUE)
colnames(data) <- c("Rep", "Dem", "Ind")
rownames(data) <- c("Male", "Female")
data <- as.table(data)

# view table
data

# Perform the chi-square test of independence
chisq.test(data)

# H0: (null hypothesis) The two variables are independent.
# H1: (alternative hypothesis) The two variables are not independent(associated).