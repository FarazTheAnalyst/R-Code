# make this example reproducible 
set.seed(0)

# create data frame
data <- data.frame(program = as.factor(rep(c("A", "B", "C"), each = 30)),
                   weight_loss = c(runif(30, 0, 3),
                                   runif(30, 0, 5),
                                   runif(30, 1, 7)))
                   
# view first six rows of data frame
head(data)

# summarize & Visualize the data
boxplot(weight_loss ~ program, data = data)

# load dplyr package
library("dplyr")

# calculate variace of weight by group
data %>% 
  group_by(program) %>% 
  summarise(var=var(weight_loss))

# perform the Brown-Forsythe Test
# load onewaytests package
install.packages("onewaytests")
library("onewaytests")

# perform Brown-Forsythe test
bf.test(weight_loss ~ program, data = data)























