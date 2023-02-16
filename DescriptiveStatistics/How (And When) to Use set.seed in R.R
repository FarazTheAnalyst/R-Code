# generate random values without using set.seed()
# create data frame
df <- data.frame(var1 = rnorm(10),
                 var2 = rnorm(10),
                 var3 = rnorm(10))

# view data frame
df

#create data frame 
# we attempt to create the same data frame again using rnorm() there 
#is no gurantee that the values will be the same
df <- data.frame(var1 = rnorm(10),
                 var2 = rnorm(10),
                 var3 = rnorm(10))

# view data frame
df

# generate random values using set.seed()
# make this example reproducible
set.seed(7)

# create data frame
df <- data.frame(var1=rnorm(10),
                 var2=rnorm(10),
                 var3=rnorm(10))

# view data frame
df

#make this example reproducible gurantee that values will be the
# same as the previous data frame
set.seed(7)

#create data frame
df2 <- data.frame(var1 = rnorm(10),
                  var2 = rnorm(10),
                  var3 = rnorm(10))

# view data frame
df2











