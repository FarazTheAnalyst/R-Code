# Controling a logical flow
# making choices with if statements
priceCalculator <- function(hours, pph = 40){
  netprice <- hours * pph
  round(netprice)
}
priceCalculator(hours = 110)

priceCalculator <- function(hours, pph = 40){
  net.price <- hours * pph
  if(hours > 100) {
    net.price <- net.price * 0.9
  }
  round(net.price)
}
priceCalculator(hours = 55)
priceCalculator(hours = 110)
if(hours > 100) net.price <- net.price * 0.9
?'if'
?"if"
# Doing Something Else With an if . . . else Stetement
priceCalculator <- function(hours, pph = 40, public = TRUE){
  net.price <- hours * pph
  if(hours > 100) net.price <- net.price * 0.9
  if(public) {
    tot.price <- net.price * 1.06
  } else {
    tot.price <- net.price * 1.12
  }
  round(tot.price)
}
priceCalculator(hours = 25, public = TRUE)
priceCalculator(hours = 25, public = TRUE)
priceCalculator(hours = 25, public = FALSE)
if(public) tot.price <- net.price * 1.06 else
   tot.price <- net.price * 1.12
tot.price <- net.price * if(public) 1.06 else 1.12

# Looking at the Problem
priceCalculator(c(25, 110))
priceCalculator(110)
c(25, 110) > 100
# Chosing based on a logicak vector
# understanding  how it works
ifelse(c(1, 3) < 2.5, 1:2, 3:4)
?ifelse
# trying it out
my.hours <- c(25, 110)
my.hours * 40 * ifelse(my.hours > 100, 0.9, 1)
# Adapting the function
priceCalculator <- function(hours, pph = 40, public){
  net.price <- hours * pph
  net.price <- net.price * ifelse(hours > 100, 0.9, 1)
  tot.price <- net.price * ifelse(public, 1.06, 1.12)
  round(tot.price)
}
clients <- data.frame(
  hours = c(25, 110, 125, 40),
  public = c(TRUE, TRUE, FALSE, FALSE)
)
with(clients, priceCalculator(hours, public = public))
40 * 1.12 * 40
# Making Multiple Choices
# Chaining if . . . else statements
if(client == "private"){
  tot.price <- net.price * 1.12
} else {
  if(client == "public"){
    tot.price <- net.price * 1.06
  } else {
    tot.price <- net.price * 1
  }
}

tot.price <- net.price * 
  if(client == "private") 1.12 else
    if(client == "public") 1.06 else 1

VAT <- ifelse(client == "private", 1.12,
ifelse(client == "public", 1.06, 1)
)
tot.price <- net.price * VAT
# Switching between possibilities
?switch
client <- "other"
switch(client, private = 1.12, public = 1.06, 1)
VAT <- switch(client, private = 1.12, public = 1.06, abroad = 1)
# Using default values in switch
VAT <- switch(client, private = 1.12, public = 1.06, 1)
client <- "other"
switch(client, private = 1.12, public = 1.06, 1)

# looping Through Values
# Constructing a for loop
for (i in values) {
  print(i)
}
# Calculating values in a for loop
# Using the values of the vector
priceCalculator <- function(hours, pph = 40, client){
  net.price <- hours * pph * 
    ifelse(hours > 100, 0.9, 1)
  VAT <- numeric(0)
  for (i in client) {
    VAT <- c(VAT, switch(i, private = 1.12, public = 1.06, 1))
  }
  
  tot.price <- net.price * VAT
  round(tot.price)
}

clients$type <- c("public", "abroad", "private", "abroad")
priceCalculator(clients$hours, client = clients$type)


priceCalculator <- function(hours, pph = 40, client){
  net.price <- hours * pph *
    ifelse(hours > 100, 0.9, 1)
nclient <- length(client)
VAT <- numeric(nclient)
for (i in seq_along(nclient)) {
  VAT[i] <- switch(client[i], private = 1.12, public = 1.06, 1)
  
}

tot.price <- net.price * VAT
round(tot.price)
}

clients$type <- c("public", "abroad", "private", "abroad")
priceCalculator(clients$hours, client = clients$type)

# Looping Without Loops: Meeting the Apply Family
songline <- "Get out of my dream..."
for (songline in 1:5) print("... Get into my car!")
songline
for(songline in 1:5){
  print("...Get into my car!")
}
for (i in 1:5) {
  print(paste("this is step", i))
}

# Looking at the family features
# Applying functions on rows and clumns
counts <- matrix(c(3, 2, 4, 6, 5, 1, 8, 6, 1), ncol = 3)
colnames(counts) <- c("sparrow", "dove", "crow")
counts
apply(counts, 2, max)
apply(counts, 1, max)
# Adding extra arguments
counts[2, 2] <- NA
counts
apply(counts, 2 , max)
apply(counts, 2, max, na.rm = TRUE)
# applying functions to listlike objects
# using  switch on vectors
sapply(c("a", "b"), switch, a = "Hello", b = "Goodbye")
sapply(c("a", "b"), switch, a = "Hello", "Goodbye", USE.NAMES = FALSE)

# replacing a complete for loop with a single statement
clients
priceCalculator <- function(hours, pph = 40, client){
  net.price <- hours * pph * ifelse(hours > 100, 0.9, 1)
  VAT <- sapply(client, switch, private = 1.12, public = 1.06, 1)
  tot.price <- net.price * VAT
  round(tot.price)
}

clients$type <- c("public", "abroad", "private", "abroad")
priceCalculator(clients$hours, client = clients$type)

priceCalculator <- function(hours, pph = 40, client){
  net.price <- hours * pph * ifelse(hours > 100, 0.9, 1)
  VAT <- sapply(client, switch, private = 1.12, public = 1.06, 1)
  tot.price <- net.price * VAT
  round(tot.price)
}
clients$type <- c("public", "abroad", "private", "abroad")
priceCalculator(clients$hours, client = clients$type)
# Applying a functon to a data frame
sapply(clients, class)

# Simplifying results (or not) with sapply
sapply(clients, unique)

# Getting list using lapply
clients
sapply(clients[c(1, 3), ], unique, simplify = FALSE, USE.NAMES = FALSE)
lapply(clients[c(1, 3), ], unique)


















