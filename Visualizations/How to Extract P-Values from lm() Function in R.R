# create data frame
df <- data.frame(rating=c(67, 75, 79, 85, 90, 96, 97),
                 points=c(8, 12, 16, 15, 22, 28, 24),
                 assists=c(4, 6, 6, 5, 3, 8, 7),
                 rebounds=c(1, 4, 3, 3, 2, 6, 7))

# fit multiple linear regression model
model <- lm(rating ~ points + assists + rebounds, data = df)

# view model summary
summary(model)

# define function to extract  overall p-value of model
overall_p <- function(my_model) {
  f <- summary(my_model)$fstatistic
  p <- pf(f[1], f[2], f[3], lower.tail = F)
  attributes(p) <- NULL
  return(p)
}

# extract overall p-value of model
overall_p(model)

# extract p-values for individual regression coefficients in model
summary(model)$coefficients[, 4]
