# This error occurs when you attempt to fit a regression model
# using a predictor variable that is either a factor or character 
# and only has one unique value.

# Example: How to Fix 'contrasts can be applied only to factors
# with 2 or more levels'
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=as.factor(4),
                 var3=c(7, 7, 8, 3, 2),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# attempt to fit regression model
model <- lm(var4 ~ var1 + var2 + var3, data=df)

# count unique values for each variable
sapply(lapply(df, unique), length)

# display unique values for each variable
lapply(df[c("var1", "var2", "var3)], unique")])

# fit regression model without using var2 as predictor variable
model <- lm(var4 ~ var1 + var3, data=df)

# view model summary
summary(model)
