# Example: Fisher's LSD Test in R
# create data frame
df <- data.frame(technique = rep(c("tech1", "tech2", "tech3"), each = 10),
score = c(72, 73, 73, 77, 82, 82, 83, 84, 85, 89,
          81, 82, 83, 83, 83, 84, 87, 90, 92, 93,
          77, 78, 79, 88, 89, 90, 91, 95, 95, 98))

# view first six rows of data frame
head(df)

# fit one-way ANOVA
model <- aov(score ~ technique, data = df)

# view summary of onw-way ANOVA
summary(model)

install.packages("agricole")
library("agricole")

# peform Fisher's LSD
print(LSD.test(model, "technique"))