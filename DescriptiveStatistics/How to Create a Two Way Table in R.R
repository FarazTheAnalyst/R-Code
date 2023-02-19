# create a two way table from scratch
# create matrix
data <- matrix(c(13, 23, 15, 16, 20, 13), ncol=3)

# view matirx
data

# speicfy row and column names of matrix
rownames(data) <- c("Male", "Female")
colnames(data) <- c("Baseball", "Basketball", "Football")

# convert matrix to table
data <- as.table(data)

# display table
data

# create data frame
df <- data.frame(sport=c('Base', 'Base', 'Bask', 'Foot', 'Foot'),
                 gender=c('Male', 'Female', 'Male', 'Male', 'Female'))

# view data frame
df

# create two way table from data frame
data <- table(df$gender, df$sport)

# display two table
data


# calculate margin sums of a two way table
# create matrix of data
# create matrix of data
data <- matrix(c(13, 15, 20, 23, 16, 13), ncol=3)
rownames(data) <- c("Male", "Female")
colnames(data) <- c("Baseball", "Basketball", "Football")

# find sum of genders
margin.table(data, margin = 1)

# find sum of sports
margin.table(data, margin = 2)

# visualize two way table frequencies
barplot(data, legend=TRUE, beside=TRUE, main = "Favorite Sport by Gender")

# visualize frequencies in a two table is to create mosaic plot
mosaicplot(data, main = "Sports Preferences", xlab = "Gender", ylab="Favorite Sport")







