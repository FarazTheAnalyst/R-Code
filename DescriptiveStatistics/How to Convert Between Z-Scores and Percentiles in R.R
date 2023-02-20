# convert z-score of 1.78 to percentile
percentile <- pnorm(1.78)

# display percentile
percentile

# convert percentile of 0.85 to z-score
z <- qnorm(0.85)

# display z-score
z

# define vector of percentiles
p_vector <- c(0.1, 0.35, 0.5, 0.55, 0.7, 0.9, 0.92)

# convert all percentile in vector to z-score
qnorm(p_vector)
