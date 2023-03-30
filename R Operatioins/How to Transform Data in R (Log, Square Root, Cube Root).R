# Many statistical tests make the assumption that the residuals
# of a response variable are normally distributed.

# Log Transformation in R
# create data frame
df <- data.frame(y=c(1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 6, 7, 8),
                 x1=c(7, 7, 8, 3, 2, 4, 4, 6, 6, 7, 5, 3, 3, 5, 8),
                 x2=c(3, 3, 6, 6, 8, 9, 9, 8, 8, 7, 4, 3, 3, 2, 7))

# perform log transformation
log_y <- log10(df$y)

# create histogram for original distribution
hist(df$y, col = "steelblue", main = "Original")

# create histogram for log-transformed distribution
hist(log_y, col = "coral2", main = "Log Transformed")

# perform Shapiro-wilk Test on original data
shapiro.test(df$y)

# perform Shapiro-wilk Test on log-transformed data
shapiro.test(log_y)

# Square Root Transformation in R
# create data frame
df <- data.frame(y=c(1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 6, 7, 8),
                 x1=c(7, 7, 8, 3, 2, 4, 4, 6, 6, 7, 5, 3, 3, 5, 8),
                 x2=c(3, 3, 6, 6, 8, 9, 9, 8, 8, 7, 4, 3, 3, 2, 7))

# perform square root transformation
sqrt_y <- sqrt(df$y)

# create histogram for original distribution
hist(df$y, col = "steelblue", main = "Original")

# create histogram for square root-transformed distribution
hist(sqrt_y, col = "coral2", main = "Square Root Transformed")

# Cube Root Transformation in R
# create data frame
df <- data.frame(y=c(1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 6, 7, 8),
                 x1=c(7, 7, 8, 3, 2, 4, 4, 6, 6, 7, 5, 3, 3, 5, 8),
                 x2=c(3, 3, 6, 6, 8, 9, 9, 8, 8, 7, 4, 3, 3, 2, 7))

# perform cube root transformation
cube_y <- df$y^(1/3)

# create histogram for original distribution
hist(df$y, col = "steelblue", main = "Original")

# create histogram for square root-transformed distribution
hist(cube_y, col = "coral2", main = "Cube Root Transformed")















