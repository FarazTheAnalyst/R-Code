# create data frame
df <- data.frame(x=c(1, 2, 3, 3, 5, NA),
                 y=c(8, 14, NA, 25, 29, NA))

# view data frame
df

# count total rows  in data frame
nrow(df)

# count total row in data frame wehre "x" is greater than 3 and not blank
nrow(df[df$x>3 & !is.na(df$x), ])

# count total rows in data frame with no missing values in any column
nrow(df[complete.cases(df), ])

# count total rows in with missing value in "y" column
nrwo(df[is.na(y), ])