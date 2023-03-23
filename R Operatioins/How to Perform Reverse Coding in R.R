# When creating surveys, researchers sometimes rephrase "positive"
# questions in a "negative" way to make sure that individuals are 
# giving consistent responses.

# create data frame that contains survey results
df <- data.frame(Q1=c(5, 4, 4, 5, 4, 3, 2, 1, 2, 1),
Q2=c(1, 2, 2, 1, 2, 3, 4, 5, 4, 5),
Q3=c(4, 4, 4, 5, 4, 3, 2, 4, 3, 1),
Q4=c(3, 4, 2, 2, 1, 2, 5, 4, 3, 2),
Q5=c(2, 2, 3, 2, 3, 1, 4, 5, 3, 4))

# view data frame
df

# Suppose questions 2 and 5 are reverse coded, so we must
# reverse their scores.
# define columns to reverse code
reverse_cols = c("Q2", "Q5")

# reverse code Q2 and Q5
df[ , reverse_cols] = 6 - df[ , reverse_cols]

# view updated data frame
df
