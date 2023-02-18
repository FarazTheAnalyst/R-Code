# create data frame
df <- data.frame(x=c(3, 5, 5, 7, 6, 10),
                 y=c(2, 2, 0, 5, 9, 4))

# view data frame
df

# use with() function
# multiply values between x and y
with(df, x*y)

# use within() function
# multiply values in x and y and assign results to new column z
within(df, z <- x*y)

# within() never change original data frame
# view original data frame
df

# multiply values in x and y and assisgn results to new data frame
df_new <- within(df, z <- x*y)

# view new data frame
df_new
