# split stirng based on spaces
split_up <- strsplit("Hey there people", split = " ")

# view results
split_up

# view class of split_up
class(split_up)

# use unlist() to produce vector as result
# split string based on spaces
split_up <- unlist(strsplit("Hey there people", split = " "))

# view results
split_up

# view class of split_up
class(split_up)

# split string based on custom delimiter
# split string based on dashes
strsplit("Hey-there-people", split = "-")

# split string based on several delimiters
strsplit("Hey&there-you/people", split = "&-/")









