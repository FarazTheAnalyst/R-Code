# create data frame
df <- data.frame(ID=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                 sales=c(7, 8, 8, 7, 9, 7, 8, 9, 3, 3, 14, 10),
                 leads=c(0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0))

# view data frame
df

# Method 1: Split Data Frame Manually Based on Row Values
# The following code shows how to split a data frame 
# into two smaller data frames where the first
# one contains rows 1 through 4 and the second contains
# rows 5 through the last row:

# define row to split on 
n <- 4

# split into two data frames
df1 <- df[row.names(df) %in% 1:n, ]
df2 <- df[row.names(df) %in% (n+1):nrow(df), ]

# view resulting data frame
df1
df2

# Method 2: Split Data Frame into n Equal-Sized Data Frames
#define number of data frames to split into
n <- 3

# split data frame into n equal-sized data frames
split(df, factor(sort(rank(row.names(df))%%n)))

# Method 3: Split Data Frame Based on Column Value
# split data frame based on particular column value
df1 <- df[df$leads == 0, ]
df2 <- df[df$leads != 0, ]

# view resulting data frames
df1
df2



















