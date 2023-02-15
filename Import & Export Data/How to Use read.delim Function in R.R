# how to Use read.delim in R
# create data frame
df <- data.frame(team=c("Mavs", "Mavs", "Spurs", "Nets"),
                 points=c(99, 90, 84, 96),
                 assists=c(22, 19, 16, 20),
                 rebounds=c(30, 39, 42, 26))

# veiw data frame
df

# export to tab-delimited text file
write.table(df, "my_data.txt", quote = FALSE, sep = "\t", row.names = FALSE)

# Using read.delim() to read a text file
df <- read.delim("my_data.txt")

# view data
df
# read in tab-delimited text file
df <- read.delim("my_data.txt", sep = "\t")

# view data
df





