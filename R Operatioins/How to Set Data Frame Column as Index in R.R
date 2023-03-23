# Example 1: Set Row Names Using Base R
# create data frame
df <- data.frame(ID=c(101, 102, 103, 104, 105),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# set ID column as row names
rownames(df) <- df$ID

# remove original ID column from data frame
df$ID <- NULL

# view updated data frame
df

# Example 2: Set Row Names Using Tidyverse Package
library("tidyverse")

df <- data.frame(ID=c(101, 102, 103, 104, 105),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view updated data frame
df

# set ID column as row names
df <- df %>% 
  column_to_rownames(., var="ID")

# view updated data frame
df

# create data frame
df <- data.frame(ID=c(101, 102, 103, 104, 105),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# write CSV file
write.csv(df, "my_data.csv", quote = FALSE, row.names = FALSE)

# import CSV file and specify ID column to use as row names
df <- read.csv("my_data.csv", row.names = "ID")

# view data frame
df













