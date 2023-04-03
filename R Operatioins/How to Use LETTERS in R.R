# How to Use LETTERS in R
# Example 1: Generate Uppercase Letters
# #display every letter in alphabet in uppercase
LETTERS

# display letters in positions 4 through 8 in uppercase
LETTERS[4:8]

# Example 2: Generate Lowercase Letters
# display every letter in alphabet in lowercase
letters

# display letters in positions 4 through 8 i lowercase
letters[4:8]
# Example 3: Generate Random Letters
# select random uppercase letter from alphabet
sample(LETTERS, 1)

# generate random sequence of 10 letters in uppercase
paste(sample(LETTERS, 10, replace = TRUE), collapse = "")

# Example 4: Concatenate Letters with Other Strings
# display each letter with "letter_" in front
paste("letter_", letters, sep = "")
