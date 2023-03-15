# One of the key assumptions in linear regression is that there is
# no correlation between the residuals, e.g. the residuals are 
# independent.

# To test for first-order autocorrelation, we can perform a 
# Durbin-Watson test. However, if we'd like to test for 
# autocorrelation at higher orders then we need to perform a 
# Breusch-Godfrey test.

# Example: Breusch-Godfrey Test in R
# create dateset
df <- data.frame(x1=c(3, 4, 4, 5, 8, 9, 11, 13, 14, 16, 17, 20),
                 x2=c(7, 7, 8, 8, 12, 4, 5, 15, 9, 17, 19, 19),
                 y=c(24, 25, 25, 27, 29, 31, 34, 34, 39, 30, 40, 49))

# view first six rows of dataset
head(df)

# load lmtest package
library("lmtest")

# perform Breusch-Godfrey test
bgtest(y ~ x1 + x2, order=3, data=df)
