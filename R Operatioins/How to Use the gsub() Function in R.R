# Example 1: Replace Text in String
# define string 
x <- "This is a fun sentence"

# replace "fun" with "great"
x <- gsub("fun", "great", x)

# view updated string
x

# Example 2: Replace Single Text String in Vector
# define vector
x <- c("Mavs", "Mavs", "Spurs", "Nets", "Spurs", "Mavs")

# replace "Mavs" with "M"
x <- gsub("Mavs", "M", x)

# view updated vector
x

# define vector
x <- c("A", "A", "B", "C", "D", "D")

# replace "A" or "B" or "C" with "X"
x <- gsub('A|B|C', 'X', x)

# view updated string
x

# define data frame
df <- data.frame(team=c('A', 'B', 'C', 'D'),
                 conf=c('West', 'West', 'East', 'East'),
                 points=c(99, 98, 92, 87),
                 rebounds=c(18, 22, 26, 19))

# view data frame
df

# replace "West" and "East" with "W" and "E"
df$conf <- gsub("West", "W", df$conf)
df$conf <- gsub("East", "E", df$conf)

# view updated data frame
df




















