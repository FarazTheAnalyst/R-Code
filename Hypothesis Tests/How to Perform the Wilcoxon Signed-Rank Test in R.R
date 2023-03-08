# #create the two vectors of data
before <- c(14, 17, 12, 15, 15, 9, 12, 13, 13, 15, 19, 17, 14, 14, 16)
after <- c(15, 17, 15, 15, 17, 14, 9, 14, 11, 16, 18, 20, 20, 10, 17)

#perform Wilcoxon Signed-Rank Test
wilcox.test(before, after, paired=TRUE)

# #perform left-tailed Wilcoxon Signed-Rank Test
wilcox.test(before, after, paired=TRUE, alternative="less")

# #perform right-tailed Wilcoxon Signed-Rank Test
wilcox.test(before, after, paired=TRUE, alternative="greater")
