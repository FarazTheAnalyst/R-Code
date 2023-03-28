# define first data frame
df1 <- data.frame(A=c(1, 6, 3, 7, 5),
                  B=c(7, 9, 8, 3, 2),
                  C=c(3, 5, 2, 9, 9))

# view data frame
df1

# define second data frame
df2 <- data.frame(B=c(1, 3, 3, 4, 5),
                  C=c(7, 7, 8, 3, 2),
                  D=c(3, 3, 6, 6, 8))

# view data frame
df2

# attempt to use rbind to row bind data frames this will throug error
# cause row names don't match
rbind(df1, df2)

# load dplyr
library("dplyr")

# combine df1 and df2
bind_rows(df1, df2)
