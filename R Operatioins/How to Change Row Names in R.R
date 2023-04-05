# view first sex rows of mtcars 
head(mtcars)

# How to Get Row Names
head(row.names(mtcars))

# How to Change One Row Name
# change the row name called Datsun710 to 710
row.names(mtcars)[row.names(mtcars) == "Datsun 710"] <- "710"

# view first six row names of mtcars
head(mtcars)

# How to Change All Row Names
# change row names to al list of integers
row.names(mtcars) <- 1:nrow(mtcars)

# view first six row names of mtcars
head(mtcars)

# change row names
row.names(mtcars) <- paste("row", 1:nrow(mtcars))

# view first six row names of mtcars
head(mtcars)
