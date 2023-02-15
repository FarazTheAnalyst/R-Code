# using colClasses when importing Files
#  we can use colClasses argment when dataset is extremly large so we can import much faster

# import csv file
df <- read.csv("my_data.csv",
               colClasses = c("character", "numeric", "numeric"))

# View class of each column in data frame
str(df)

# if we supply a one colClasses arguments then all column will be the same data type
# import CSV file
df <- read.csv("my_data.csv",
               colClasses =c("character"))

# view class of each column in data frame
str(df)


