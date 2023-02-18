# define function for Bayes' Theorem
bayesTheorem <- function(pA, pB, pBA) {
  pAB <- pA * pBA / pB
  return(pAB)
}

# define probabilities
pRain <- 0.2
pCloudy <- 0.4
pCloudyRain <- .85

# use function to calculate conditional probabilitity
bayesTheorem(pRain, pCloudy, pCloudyRain)
