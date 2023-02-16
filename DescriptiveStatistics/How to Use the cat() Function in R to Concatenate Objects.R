# use cat() to conctenate objects
# concatenate three strings
cat("hey", "there", "everyone")

# concatenate three stirngs, using dash as separator
cat("hey", "there", "everyone", sep="-")

# concatenate three stirngs, using "\n as separator
cat("hey", "there", "everyone", sep="\n")

# concatenate three strings and output results to txt file
cat("hey", "there", "everone", sep = "\n", file="my_dat.txt")

# concatenate three stirngs and ouput results to CSV file
cat("hey", "there", "everyone", sep = "\n", file = "my_data.csv")

# use cat() to concatenate objects and append results to file
# concatenate three stirngs and output results to CSV file
cat("hey", "there", "everyone", sep = "\n", file = "my_data.csv")

# append results of this concatenation to first file
cat("how", "are", "you", sep = "\n", file = "my_data.csv", append = "TRUE")













