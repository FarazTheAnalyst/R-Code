# How to Perform Listwise Deletion in R

# Example: Perform Listwise Deletion in R
# create data frame
df <- data.frame(rating=c(70, 75, 75, 78, 81, 85, 89, 91, 94, 97),
                 points=c(12, 15, 14, 13, NA, 29, 24, 18, 20, 25),
                 assists=c(9, 5, NA, 5, 7, 8, 11, 12, 13, 11))

# view data frame
df

# create data frame that only contains rows with no missing values
complete_df <- df[complete.cases(df), ]

# view new data frame
complete_df

# count how many rows have missing values in any column
nrow(df[!complete.cases(df), ])

# count how many rows do not have missing values in any column
nrow(df[complete.cases(df), ])
