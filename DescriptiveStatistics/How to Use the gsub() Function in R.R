# replace text string
# define stirng
x <- "This is a fun sentence"

# replace "fun" with great
x <- gsub("fun", "great", x)

# view updated string
x

# Replace single text string in vector
# define vector
x <- c("Mavs", "Mavs", "Spurs", "Nets", "Spurs", "Mavs")

# replace "Mavs" with "M"
x <- gsub("Mavs", "M", x)

# view updated vector
x

# replace multiple text strings in vector
# define vector
x <- c("A", "A", "B", "C", "D", "D")

# replace "A" or "B" or "C" with "X"
x <- gsub("A|B|C", "X", x)

# view updated vector
x

# replace text in data frame
#define data frame
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


























