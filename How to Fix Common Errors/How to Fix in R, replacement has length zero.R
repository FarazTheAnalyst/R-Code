# How to Reproduce the Error
data = c(1, 4, 5, 5, 7, 9, 12, 14, 15, 17)

# use for loop()
for(i in 1:length(data)) {
  data[i] = data[i] * data[i-1]
}

# We can verify this by attempting to print the value located at position
# 0 in the vector:
print(data[0])

# How to Fix the Error
# we could fix this error by starting the for loop at index position
# 2 as opposed to position 1:
for(i in 2:length(data)) {
  data[i] = data[i] * data[i-1]
}

# view updated vector
data
