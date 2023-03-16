# The Akaike information criterion (AIC) is a metric that is used
# to compare the fit of several regression models.

install.packages("AICcmodavg")
library(AICcmodavg)

# Example: Calculate & Interpret AIC in R
# fit three models
model1 <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars )
model2 <- lm(mpg ~ disp + qsec, data = mtcars )
model3 <- lm(mpg ~ disp + wt, data = mtcars)

# define list of models
models <- list(model1, model2, model3)

# specify model names
mod.names <- c("disp.hp.wt.qsec", "disp.qsec", "disp.wt")

# calculate AIC of each model
aictab(cand.set = models, modnames = mod.names)
