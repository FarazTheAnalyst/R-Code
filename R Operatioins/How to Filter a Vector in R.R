# Example 1: Filter for Elements Equal to Some Value
# create vector
x <- c(1, 2, 2, 4, 6, 8, 8, 8, 12, 15)

# filter for elements to 8
x[x==8]

# create vector x <- c(1, 2, 2, 4, 6, 8, 8, 8, 12, 15)

# filter fo elemnts not equal to 8
x[x != 8]

# Example 2: Filter for Elements Based on One Condition
# create vector 
x <- c(1, 2, 2, 3, 4, 6, 8, 8, 8, 12, 15)

# filter for elements less than 8
x[x < 8]

# Example 3: Filter for Elements Based on Multiple Conditions
# create vector 
x <- c(1, 2, 2, 4, 6, 8, 8, 8, 12, 15)

# filter for elements less than 8 r greater than 12
x[(x < 8) | (x > 12)]

# Example 4: Filter for Elements in List
# create vector
x <- c(1, 2, 2, 4, 6, 8, 8, 8, 12, 15)

# filter for elements equal to 2, 6, or 12
x[x %in% c(2, 6, 12 )]
