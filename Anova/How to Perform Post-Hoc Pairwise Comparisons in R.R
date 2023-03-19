df <- data.frame(technique = rep(c("tech1", "tech2", "tech3"), each=10),
                 score = c(76, 77, 77, 81, 82, 82, 83, 84, 85, 89,
                           81, 82, 83, 83, 83, 84, 87, 90, 92, 93,
                           77, 78, 79, 88, 89, 90, 91, 95, 95, 98))

# perform one-way ANOVA
model <- aov(score ~ technique, data = df)

# view ouput of ANOVA
summary(model)

# The Tukey Method
# perform the Tukey post-hoc method
TukeyHSD(model, conf.level = .95)

# The Scheffe Method
library("DescTools")

# perform the Scheffe post-hoc method
ScheffeTest(model)

# The Bonferroni Method
# The Bonferroni method is best to use when you have a set
# of planned pairwise comparisons you'd like to make.

# perform the Bonferroni post-hoc method
pairwise.t.test(df$score, df$technique, p.adjust = "bonferroni")

# The Holm Method
# The Holm method is also used when you have a set of planned
# pairwise comparisons you'd like to make beforehand and
# it tends to have even higher power than the Bonferroni method,
# so it's often preferred.

# perform the Holm post-hoc method
pairwise.t.test(df$score, df$technique, p.adj = "holm")





















































