# Method 1: Matrix with Column Names
# create data frame with 0 rows and 5 columns
df <- data.frame(matrix(ncol = 5, nrow = 0))

# provide column names
colnames(df) <- c("var1", "var2", "var3", "var4", "var5")

# view structure of the data frame
str(df)

# Method 2: Initialize Empty Vectors
# create data frame with 5 empty vectors
df2 <- data.frame(Doubles=double(),
                  Integers=integer(),
                  Factors=factor(),
                  Logical=logical(),
                  Characters=character(),
                  stringsAsFactors = FALSE)

# view structure of the data frame
str(df2)
