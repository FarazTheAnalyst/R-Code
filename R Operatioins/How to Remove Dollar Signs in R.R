# You can easily remove dollar signs and commas from data frame 
# columns in R by using gsub() function.
# remove dollar signs in R
# create data frame
df1 <- data.frame(ID=1:5,
                  sales=c('$14.45', '$13.39', '$17.89', '$18.99', '$20.88'),
                  stringsAsFactors=FALSE)

# view data frame
df1

# remove dollar signs from sales column
df1$sales = as.numeric(gsub("\\$", "", df1$sales))

# view updated data frame
df1

# Remove Dollar Signs & Commas in R
# create data frame
df2 <- data.frame(ID=1:3,
                  sales=c('$14,000', '$13,300', '$17,890'),
                  stringsAsFactors=FALSE)

df2

# remove dollar signs and commas from sales column
df2$sales = as.numeric(gsub("[\\$,]", "", df2$sales))
df2

# now we can calculate the sum of sales
sum(df2$sales)
