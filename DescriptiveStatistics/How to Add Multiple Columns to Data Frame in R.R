# define data frame
df <- data.frame(A=c(4, 8, 10, 2, 15, 12, 7, 22),
                 B=c(6, 3, 9, 7, 6, 8, 14, 10),
                 C=c(10, 9, 4, 4, 3, 7, 10, 11))
# view data frame
df

# add three new column to data frame that each contain NA values
df[c("D", "E", "F")] <- NA

# view updated data frame
df

# load package
library("dplyr")
library("data.table")

# create data table
dt <- data.table(A=c(4, 8, 10, 2, 15, 12, 7, 22),
                 B=c(6, 3, 9, 7, 6, 8, 14, 10),
                 C=c(10, 9, 4, 4, 3, 7, 10, 11))

# view data table
dt

# define two column to add
D = c(4, 5, 5, 4, 7, 8, 12, 10)
E= c(2, 2, 5, 7, 6, 5, 10, 13)

# add two columns to data table
dt[ , ':='(D = D, E = E)]

# view updated data
dt








