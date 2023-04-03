# define vector of strings
some_strings <- c("hey", "these", "are", "some", "strings")

# view vector
some_strings

# Example 1: Remove Quotes from Strings Using print()
# print vector of strings without quotes
print(some_strings, quote = FALSE)

# Example 2: Remove Quotes from Strings Using noquote()
# print vector of strings without quotes
noquote(some_strings)

# Example 3: Remove Quotes from Strings Using cat()
# print vector of strings without quotes
cat(some_strings)

# print vector of strins without quotes each on a new line
cat(paste(some_strings, "\n"))
