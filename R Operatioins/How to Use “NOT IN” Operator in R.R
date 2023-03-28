# define numeric vector
num_data <- c(1, 2, 3, 3, 4, 4, 5, 5, 6)

# display all values in vector no equal to 3 or 4
num_data[!(num_data %in% c(3, 4))]

# define vector of character data
char_data <- c("A", "A", "A", "B", "B", "C", "C", "D", "D", "D")

# display all elements in vector not equal to "A' OR "c"
char_data[!(char_data %in% c("A", "C"))]

# Example 2: How to Use "NOT IN" with Data Frames
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D'),
                 points=c(77, 81, 89, 83, 99, 92, 97),
                 assists=c(19, 22, 29, 15, 32, 39, 14))

# view data frame
df

# select all rows where team is not equal to "A" or "B"
subset(df, !(team %in% c("A", "B")))

# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D'),
                 points=c(77, 81, 89, 83, 99, 92, 97),
                 assists=c(19, 22, 29, 15, 32, 39, 14))

# view data frame
df

# select all rows where team is not equal to "A" OR "B"
subset(df, !(points %in% c(89, 99)))


















