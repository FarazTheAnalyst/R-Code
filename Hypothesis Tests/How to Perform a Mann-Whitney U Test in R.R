# create a vector for each group
new <- c(3, 5, 1, 4, 3, 5)
placebo <- c(4, 8, 6, 2, 1, 9)

# perform the Mann Whitney U test
wilcox.test(new, placebo)

# create a data frame with two columns, one for each group
drug_data <- data.frame(attacks = c(3, 5, 1, 4, 3, 5, 4, 8, 6, 2, 1, 9),
                   drug_group = c(rep("old", 6), rep("placebo", 6)))

# perform a  the Mann whitney U test
wilcox.test(attacks ~ drug_group, data = drug_data)

# create a vector for each group
new <- c(3, 5, 1, 4, 3, 5)
placebo <- c(4, 8, 6, 2, 1, 9)

# perform the Mann Whitney U test, specify alternative = "less"
wilcox.test(new, placebo, alternative="less")
