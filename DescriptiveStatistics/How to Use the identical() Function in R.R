# use identical() to test if two strings are equal
# define two strings
string1 <- "this is some stirng"
string2 <- "this is some stirng"

# check if two strings are identical
identical(string1, string2)

# deine two stirngs
string1 <- "this is some stirng"
string2 <- "this is some cool string"

# check if two stirngs are identical
identical(string1, string2)

# use identical() to test if two vectors are equal
# define two vectors
vector1 <- c("A", "B", "C", "D", "E", "F")
vector2 <- c("A", "B", "C", "D", "E", "F")

# check if two vectors are identical
identical(vector1, vector2)

# define two vectors
vector1 <- c("A", "B", "C", "D", "E", "F")
vector2 <- c("A", "B", "C", "D")

# check if two vectors are identical
identical(vector1, vector2)

# use identical() to test if two data frames are equal
# define data frame
df1 <- data.frame(team=c("A", "B", "C", "D"),
                  points=c(14, 20, 22, 29))

df2 <- data.frame(team=c("A", "B", "C", "D"),
                  points=c(14, 20, 22, 29))

# check if two data frames are equal
identical(df1, df2)

# define two data frame
df1 <- data.frame(team=c("A", "B", "C", "D"),
                  points=c(14, 20, 22, 29))

df2 <- data.frame(team=c("A", "B", "C", "D"),
                  points=c(99, 20, 22, 29))

# check if two data frames are equal
identical(df1, df2)










