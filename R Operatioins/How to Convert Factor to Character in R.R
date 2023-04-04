# Example 1: Convert Vector Factor to Character
# create factor vector
x <- factor(c("A", "B", "C", "D"))

# view class
class(x)

# convert factor vector to character 
x <- as.character(x)

# view class
class(x)

# Example 2: Convert Data Frame Column to Character
# create data frame
df <- data.frame(name=factor(c('A', 'B', 'C', 'D')),
                 status=factor(c('Y', 'Y', 'N', 'N')),
                 income=c(45, 89, 93, 96))

# view class of each column
sapply(df, class)

# convert name column to character
df$name <- as.character(df$name)

# view class of each column
sapply(df, class)

# Example 4: Convert All Data Frame Columns to Character
# create data frame
df <- data.frame(name=factor(c('A', 'B', 'C', 'D')),
                 status=factor(c('Y', 'Y', 'N', 'N')),
                 income=c(45, 89, 93, 96))

# view class of each column
sapply(df, class)

# convert name column to character
df$name <- as.character(df$name)

# view class of each column_to_rownames
sapply(df, class)

# Example 3: Convert All Factor Columns to Character
# create data frame
df <- data.frame(name=factor(c('A', 'B', 'C', 'D')),
                 status=factor(c('Y', 'Y', 'N', 'N')),
                 income=c(45, 89, 93, 96))

# view class of each column
sapply(df, class)

# convert all factor column to character
x <- sapply(df, is.factor)
df[x] <- lapply(df[x], as.character)

# view class of each column
sapply(df, class)

# Example 4: Convert All Data Frame Columns to Character
# create data frame
df <- data.frame(name=factor(c('A', 'B', 'C', 'D')),
                 status=factor(c('Y', 'Y', 'N', 'N')),
                 income=c(45, 89, 93, 96))

# view class of each column
sapply(df, class)

# convert all columns to character
df <- lapply(df, as.character)

# view class of each column
sapply(df, class)











