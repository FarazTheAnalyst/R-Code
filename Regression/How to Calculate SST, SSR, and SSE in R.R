# create data frame 
df <- data.frame(hours=c(1, 1, 1, 2, 2, 2, 2, 2, 3, 3,
                         3, 4, 4, 4, 5, 5, 6, 7, 7, 8),
                 score=c(68, 76, 74, 80, 76, 78, 81, 84, 86, 83,
                         88, 85, 89, 94, 93, 94, 96, 89, 92, 97))

# view first six rows of data frame
head(df)

# fit regression model
model <- lm(score ~ hours, data = df)

# view model summary
summary(model)

# calculate SST, SSR, SSE
# find sse
sse <- sum((fitted(model) - df$score)^2)
sse

# find ssr
ssr <- sum((fitted(model) - mean(df$score))^2)
ssr

# find sst
sst <- ssr + sse
sst

# r-squared
r_squared <- ssr/sst
r_squared
