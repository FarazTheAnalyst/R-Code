# Example 1: Check if Two Vectors Are Identical
# define two strings
string1 <- "Mavericks"
string2 <- "mavericks"

# case-sensitive comparison
string1 == string2

# case-insensitive comparison
tolower(string1) == tolower(string2)

# Example 2: Compare Two Vectors of Strings
# define two vectors of strings
vector1 <- c("hey", "hello", "HI")
vector2 <- c("hey", "hello", "hi")

# case-sensitive comparison
identical(vector1, vector2)

# case-insensitive comparison
identical(tolower(vector1), tolower(vector2))

# Example 3: Find Similarities Between Two Vectors of Strings
# define two vectors of strings
vector1 <- c("hey", "hello", "greetings")
vector2 <- c("hey", "hello", "hi")

# find which strings in vector1 are also in vector2
vector1[vector1 %in% vector2]