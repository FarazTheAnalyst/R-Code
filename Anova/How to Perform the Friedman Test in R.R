# create data
data <- data.frame(person = rep(1:5, each=4),
                   drug = rep(c(1, 2, 3, 4), times = 5),
                   score = c(30, 28, 16, 34, 14, 18, 10, 22,
                             24, 20, 18, 30, 38, 34, 20, 44,
                             26, 28, 14, 30))

# view data 
data

# perform Fridman Test
friedman.test(y=data$score, group=data$drug, blocks = data$person)

# perform post-hoc tests
pairwise.wilcox.test(data$score, data$drug, p.adjust.method = "bonf")
