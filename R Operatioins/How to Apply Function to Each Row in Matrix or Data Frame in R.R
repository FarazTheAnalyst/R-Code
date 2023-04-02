# Example 1: Apply Function to Each Row in Matrix
# create matrix
mat <- matrix(1:15, nrow=3)

# view matrix
mat

# find mean of each row 
apply(mat, 1, mean)

# find sum of each row
apply(mat, 1, sum)

# find standard deviation of each row
apply(mat, 1, sd)

# multiply the value in each row by 2 (using t() to transpose the results)
t(apply(mat, 1, function(x) x * 2))

# multiply the vlaue in each row by 2 (using t() to transpose the results)
t(apply(mat, 1, function(x) x / sum(x)))

# find mean of each row
rowMeans(mat)

# find sum of each row
rowSums(mat)

# Example 2: Apply Function to Each Row in Data Frame
# create data frame
df <- data.frame(var1=1:3,
                 var2=4:6,
                 var3=7:9,
                 var4=10:12,
                 var5=13:15)

# view data frame
df

# find mean of each row
apply(df, 1, mean)

# find sum of each row
apply(df, 1, sum)

# find standard deviation of each row
apply(df, 1, sd)

# multiply the value in each row by 2 (using t() to transpose the results)
t(apply(df, 1, function(x) x * 2))

# normalize every row to 1 (using t() to transpose the results)
t(apply(df, 1, function(x) x / sum(x)))

# find mean of each row
rowMeans(df)

# find sum of each row
rowSums(df)











