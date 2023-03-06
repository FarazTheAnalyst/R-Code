# example 1: one sample z-test in R
install.packages("BSDA")
library("BSDA")

# enter IQ levels for 20 patients
data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
         105, 109, 109, 109, 110, 112, 112, 113, 114, 115)

# perform one sample z-test
z.test(data, mu=100, sigma.x=15)

# Example 2: Two Sample Z-Test in R

library("BSDA")

# enter IQ levels for 20 individuals from each city
cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

# perform two sample z-test 
z.test(x=cityA, y=cityB, mu=0, sigma.x=15, sigma.y=15)
