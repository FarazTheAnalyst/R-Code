# Example 1: Print One-Way Table from Data
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 position=c('Guard', 'Guard', 'Forward', 'Guard', 'Forward',
                            'Forward', 'Guard', 'Guard', 'Forward'),
                 points=c(14, 12, 15, 20, 22, 36, 10, 16, 19))

# view data frame
df

# create table for "position" variable
table1 <- table(df$position)

# view table
table1

# Example 2: Print Two-Way Table from Data
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 position=c('Guard', 'Guard', 'Forward', 'Guard', 'Forward',
                            'Forward', 'Guard', 'Guard', 'Forward'),
                 points=c(14, 12, 15, 20, 22, 36, 10, 16, 19))

# view data frame
df

# create two-way table for "team" and "position" variables
table2 <- table(df$team, df$position)

# view table
table2

# Example 3: Print Table From Scratch

#create matrix
data <- matrix(c(13, 23, 15, 16, 20, 13), ncol=3)

#specify row and column names of matrix
rownames(data) <- c('Male', 'Female')
colnames(data) <- c('Baseball', 'Basketball', 'Football')

#convert matrix to table
data <- as.table(data)

#display table
data






















