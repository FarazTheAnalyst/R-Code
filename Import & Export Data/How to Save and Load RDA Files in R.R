#Make this example reproducible
set.seed(0)

#Create data frame
df <- data.frame(x=rnorm(100),
                 y=rnorm(100),
                 z=rnorm(100))
head(df)

#Display working directory
getwd()

#Save the data frame
save(df, file="my_data.rda")

#Remove the data frame
rm(df)

#Load the data frame
load(file="my_data.rda")














