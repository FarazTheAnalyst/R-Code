# make this example reproducible 
set.seed(0)

# create data
data <- data.frame(group = rep(c("A", "B", "C"), each = 30),
                   values = c(runif(30, 0, 3),
                              runif(30, 0, 5),
                              runif(30, 1, 7)))

# view first six rows of data
head(data)

# fit one way ANOVA model
model <- aov(values ~ group, data = data)

# view the model oputput
summary(mdoel)

# perform Tukey's Test
TukeyHSD(model, conf.level=.95)

# visualize the results.
# plot confidence intervals
plot(TukeyHSD(model, conf.level = .95), las = 2)
