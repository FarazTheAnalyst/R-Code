# Example 1: Chi-Square Goodness of Fit Test
# A shop owner claims that an equal number of customers come into 
# his shop each weekday.
# Monday: 50 customers
# Tuesday: 60 customers
# Wednesday: 40 customers
# Thursday: 47 customers
# Friday: 53 customers

# find p-value for the chi-squre test statistics
pchisq(q=4.36, df=4, lower.tail = FALSE)

# Example 2: Chi-Square Test of Independence
# Researchers want to know whether or not gender is associated 
# with political party preference. They take a simple random 
# sample of 500 voters and survey them on their political party preference

# find p-value for the chi-square test statistics
pchisq(q=0.8642, df=2, lower.tail = FALSE)
