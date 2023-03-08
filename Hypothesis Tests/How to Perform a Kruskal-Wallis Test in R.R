# A Kruskal-Wallis Test is used to determine whether or not
# there is a statistically significant difference between the
# medians of three or more independent groups.

# This test is the nonparametric equivalent of the oneThis test is the nonparametric equivalent of the one-way ANOVA and is typically used when the normality assumption is violated.-way ANOVA and is
# typically used when the normality assumption is violated.

# Enter the data
# create data frame
df <- data.frame(group=rep(c('A', 'B', 'C'), each=10),
                 height=c(7, 14, 14, 13, 12, 9, 6, 14, 12, 8,
                          15, 17, 13, 15, 15, 13, 9, 12, 10, 8,
                          6, 8, 8, 9, 5, 14, 13, 8, 10, 9))

# view first six rows of data frame
head(df)

# perform Kruskal-walls test
kruskal.test(height ~ group, data = df)
