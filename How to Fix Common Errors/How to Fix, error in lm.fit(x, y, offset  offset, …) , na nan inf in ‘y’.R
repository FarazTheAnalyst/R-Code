# This error occurs when you attempt to use the lm() function to fit a linear regression model in R, but either the predictor or response variable contains NaN or Inf values.
# How to Reproduce the Error

# create data frame with some NA, NAN, Inf values
df <- data.frame(minutes=c(4, NA, 28, 12, 30, 21, 14),
                 points=c(12, NaN, 30, Inf, 43, 25, 17))

# view data frame
df

# attempt to fit regression mdoel
lm(points ~ minutes, data = df)

# How to Fix the Error
# replace NAN & Inf wit NA
df[is.na(df) | df=="Inf"] <- NA

# view updated data frame
df

# fit regression model
lm(points ~ minutes, data=df)
