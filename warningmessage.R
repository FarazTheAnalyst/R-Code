logit <- function(x){
  x <- ifelse(x < 0 | x > 1, "NA", x)
  browser()
  log(x / (1 - x) )
}
# Generating Your Own Messages
# Creating errors
logit <- function(x){
  if( any(x < 0 | x > 0) ) stop("x not between 0 and 1")
  log(x / (1 - x) )
}
logitpercent(c("50%", "150%"))
