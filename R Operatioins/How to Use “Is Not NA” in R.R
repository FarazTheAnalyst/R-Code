# Example 1: Return Values that are Not NA in Vector
# create vector
x <- c(1, 24, NA, 6, NA, 9)

# return only values that are not NA
X <- X[!is.na(x)]

# Example 2: Return Rows that are Not NA in One Column of Data Frame
# create data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view dta frame
df

# remove rows with NA in z xolumn
df <- df[!(is.na(df$z)), ]

# view data frame
df

# Example 3: Return Rows that are Not NA in Several Columns
# create data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data frame
df

# remove rows with NA in x and y column
df <- df[!(is.na(df$x)) & !(is.na(df$y)), ]

# Example 4: Return Rows that are Not NA in Any Column

# create data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data frame
df

# remove rows with NA in any column
df <- na.omit(df)




















