# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 24, 24, 28),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# use attact() to perform calculations
# calculate mean of rebounds column
mean(df$rebounds)

# calculate median of rebounds column
median(df$rebounds)

# calculate range of rebounds column
range(df$rebounds)

# if we use attach function then we don't even have to type out the data  frame name
attach(df)

# calculate mean of rebounds column
mean(rebounds)

# calculate median of rebounds column
median(rebounds)

# calculate reange of rebounds column
range(rebounds)

# use attach to fit regression models
# fit regression model
fit <- lm(points ~ assists + rebounds, data = df)

# view coefficients of regression model
summary(fit)$coef

# fit regression model
# with attach() we don't even have to use the data argument
attach(df)
fit <- lm(points ~ assists + rebounds)

# view  coefficients of regression model
summary(fit)$coef

# use detach() and search()
# show all attached objects
search()

# detach data frame
detach(df)


































