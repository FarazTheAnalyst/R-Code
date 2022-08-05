# Taking a Closer Look at Distributuions
# Observing beavers
?beaver2
beaver2
str(beaver2)

transform.beaver <- transform(beaver2,
                              activ = factor(activ, labels = c("no", "yes"))
                              )
transform.beaver

## Testing normality graphically
library("lattice")
histogram(~temp | activ, data = transform.beaver)

# Using quantile plots
# Comparing two samples
with(transform.beaver, qqplot(temp[activ == "yes"], temp[activ == "no"]))
transform.beaver

# Using a QQ plot to check for normality
?qqnorm
with(transform.beaver, {
  qqnorm(temp[activ == "no"], main = "Inactive")  ## Inactive beaver 2
  qqline(temp[activ == "no"])
})

with(transform.beaver, {
  qqnorm(temp[activ == "yes"], main = "Active")  ## Acticve beaver 2
  qqline(temp[activ == "yes"])
})

# Testing normality in a formal way
shapiro.test(transform.beaver$temp)
# The statistic in question is the Shapiro-Wilk test
# statistic ("W"). In general, smaller values indicate worse
# fit of the sample data to a normal distribution, 
# whereas larger values indicate better fit.
# How small and how large to trigger "significant" 
# results depends on sample size
result <- shapiro.test(transform.beaver$temp)
result$p.value
with(transform.beaver, tapply(temp, activ, shapiro.test))

# Comparing Two Sample
Confidence Interval = (point estimate)  +/-  (critical value)*(standard error)
Confidence Interval = x  +/-  z*(s/???n)
x: sample mean
z: the chosen z-value
s: sample standard deviation
n: sample size
Sample size n = 25
Sample mean weight x = 300
Sample standard deviation s = 18.5
90% Confidence Interval: 300 +/-  1.645*(18.5/???25) = [293.91, 306.09]
37.90-37.096

# t-test alternative method
with(transform.beaver,
     t.test(temp[activ == "yes"],
            temp[activ == "no"]))

# Dropping assumptions
wilcox.test(temp ~ activ, data = transform.beaver)
# example
wilcox.test(weight ~ company, data = dat)

Wilcoxon rank sum test

data:  weight by company
W = 13, p-value = 0.04988
alternative hypothesis: true location shift is not equal to 0

First we notice the p-value is a little less than 0.05. Based on this result we may conclude the medians of these two distributions differ.
The alternative hypothesis is stated as the "true location shift is not equal to 0".
That's another way of saying "the distribution of one population is shifted to the left or right of the other,"
which implies different medians.

The Wilcoxon statistic is returned as W = 13.
This is NOT an estimate of the difference in medians. This is actually
the number of times that a package weight from company B is less than a package weight from company A.
# https://data.library.virginia.edu/the-wilcoxon-rank-sum-test/

# Comparing paried data
sleep
t.test(extra ~ group, data = sleep, paired = TRUE)

# Testing Counts and Proportions
# Checking out proportions
survivors <- matrix(c(1781, 1443, 135, 47), ncol = 2)
colnames(survivors) <- c("survived", "died")
rownames(survivors) <- c("no seat belt", "seat belt")
survivors
result.prop <- prop.test(survivors)
result.prop
# 2-sample test for equality of proportions with continuity correction
#
# data:  c(p1 * n1, p2 * n2) out of c(n1, n2)
# X-squared = 4.3353, df = 1, p-value = 0.01867
# alternative hypothesis: greater
#  95 percent confidence interval:
#  0.003785395 1.000000000
# sample estimates:
# prop 1 prop 2 
# 0.02   0.01 
# We have a p-value = 0.01867 < 0.05 implying statistical significance at the 5% level. We also have the 95% confidence interval of 0.003785395 1.000000000. The prop.test documentation states that:
# In my example, the difference in proportions is diff = p1 - p2 = 0.01. So is this test saying that the true difference in proportions with a 95% CI is between ~0.0038 and 1?
  # 
  # If so, is it correct to say that the sample difference is 1% but the true difference could be as low as 0.38% or as high as 100%, with a 95% CI, and p1 is greater than p2 with p<0.05?
# https://stats.stackexchange.com/questions/280433/understanding-output-of-prop-test-in-r

# Analyzing tables
# Testing conotingency of tables
chisq.test(survivors)
# Testing tables with more than two columns
HairEyeColor
str(HairEyeColor)
HairEyeMargin <- margin.table(HairEyeColor, margin = c(1, 2))
HairEyeMargin
chisq.test(HairEyeMargin)

# Extracting test results
str(result)
t.test(temp ~ activ, data = transform.beaver)$p.value

# Working with Models
# Analyzing variances
InsectSprays
str(InsectSprays)
# Building the model
AOVModel <- aov(count ~ spray, data = InsectSprays)

# Looking at the object
# F value anova table def:
# The F-value in an ANOVA is calculated as: 
  # variation between sample means / variation within 
# the samples. The higher the F-value in an ANOVA,
# the higher the variation between sample means
# relative to the variation within the samples. 
# The higher the F-value, the lower the corresponding
# p-value
AOVModel

# Looking at the individual differences
InsectSprays
Comparisons <- TukeyHSD(AOVModel)
Comparisons
Comparisons$spray["D-C", ]
plot(Comparisons, las = 1)

# Modeling linear relations
# Building a linear model
mtcars
?formula
?lm
Model <- lm(mpg ~ wt, data = mtcars)
Model
# Extracting information from the model
coef.Model <- coef(Model)
coef.Model
plot(mpg ~ wt, data = mtcars)
abline(coef = coef.Model)
?abline
abline(Model)

# Evaluating linear models
# Summarizing the model
Model.summary <- summary(Model)
Model.summary

# Testing the impact of model terms
Model.anova <- anova(Model)
Model.anova
Model.anova["wt", "Pr(>F)"]

# Predicting new values
# Getting the values
new.cars <- data.frame(wt = c(1.7, 2.4, 3.6))
new.cars
predict(Model, newdata = new.cars)
?predict

# Having confidence in your predictions
predict(Model, newdata = new.cars, interval = "confidence")
predict(Model, newdata = new.cars, interval = "prediction", se.fit = TRUE)
# The smaller the standard error, 
# the less the spread and the more likely 
# it is that any sample mean is close to the
# population mean. A small standard error
# is thus a Good Thing.

# The residual sum of squares (RSS) measures the level of variance in the error term, or residuals, of a regression model.
# The smaller the residual sum of squares, the better your model fits your data; the greater the residual sum of squares, the poorer your model fits your data. 
# A value of zero means your model is a perfect fit.












