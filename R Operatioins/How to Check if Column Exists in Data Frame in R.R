# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Check if Exact Column Name Exists in Data Frame
# check if exact column name "rebounds" exists indata frame
"rebounds" %in% names(df)

# Example 2: Check if Partial Column Name Exists in Data Frame
# check if partial column name "tea" exists in data frame
any(grepl("tea", names(df)))

# Example 3: Check if Several Exact Column Names All 
# Exist in Data Frame
# check if three column names all exist in data frame
all(c("team", "points", "blocks")) %in% names(df)
