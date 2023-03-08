# Bartlett's Test of Sphericity compares an observed correlation
# matrix to the identity matrix. Essentially it checks to see 
# if there is a certain redundancy between the variables that 
# we can summarize with a few number of factors

# This test is often performed before we use a data reduction technique 
# such as principal component analysis or factor analysis to verify
# that a data reduction technique can actually compress the data in
# a meaningful way. 

# install and load package
install.packages("psych")
library("psych")

# make this example reproducible 
set.seed(0)

# create fake data
data <- data.frame(A=rnorm(50, 1, 4), B=rnorm(50, 3, 6), C=rnorm(50, 8))

# view first six rows of data
head(data)

# veiw correlation matrix of data
cor_matrix <- cor(data)
cor_matrix

# perform Barlett's Test of Spheircity
cortest.bartlett(cor_matrix, n=nrow(data))






















