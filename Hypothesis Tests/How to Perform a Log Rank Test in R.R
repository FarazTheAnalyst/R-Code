#  A log rank test is the most common way to compare survival curves
# between two groups.

library("survival")

# view first six rows of dataset
head(ovarian)

# perform log rank test
survdiff(Surv(futime, fustat) ~ rx, data = ovarian)

# plot survival for each treatment group
plot(survfit(Surv(futime, fustat) ~ rx, data = ovarian),
     xlab = "Time",
     ylab = "Overall survival probability")
