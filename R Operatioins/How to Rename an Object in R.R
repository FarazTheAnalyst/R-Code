# create data frame
some_data <- data.frame(x=c(3, 4, 4, 5, 9),
                        y=c(3, 8, 7, 10, 4),
                        z=c(1, 2, 2, 6, 7))

# view data frame
some_data

# rename data frame
new_data <- some_data

# view data frame
new_data

# it's important to note that the old name some_data can still
# be used to reference this data frame:
# view data frame
some_data

# remove old name of data frame
rm(some_data)

# attempt to use old name to view data frame it'll give Error
some_data
