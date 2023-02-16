# use do.call() with sum
# create list
values_list <- list(A=c(1, 2, 3), B=c(7, 5, 10), C=c(9, 9, 2))

# calculate sum of values in list
do.call(sum, values_list)

# we would receive an error if we just tried to use sum() directly with the list
values_list <- list(A=c(1, 2, 3), B=c(7, 5, 10), C=c(9, 9, 2))

# attempt to sum valeus in list
sum(values_list)

# do.call() with mean
# define argument to use in do.call
args <- list(1:20, na.rm=TRUE)

# calculate the mean of values in list
do.call(mean, args)

# we would receive an error if we just tried to use mean() directly with list
# attempt to calculate mean of valeus in list
mean(list(1:20), na.rm=TRUE)

# use do.call() with rbind
# create three data frames
df1 <- data.frame(team=c('A', 'B', 'C'),
                  points=c(22, 27, 38))

df2 <- data.frame(team=c('D', 'E', 'F'),
                  points=c(22, 14, 20))

df3 <- data.frame(team=c('G', 'H', 'I'),
                  points=c(11, 15, 18))

# place the three data frames into list
df_list <- list(df1, df2, df3)

# view list
df_list

# row bind together all three data frames
do.call(rbind, df_list)

# we would not receive the desired data frame if we tried to use rbind() directly with the list
df1 <- data.frame(team=c('A', 'B', 'C'),
                  points=c(22, 27, 38))

df2 <- data.frame(team=c('D', 'E', 'F'),
                  points=c(22, 14, 20))

df3 <- data.frame(team=c('G', 'H', 'I'),
                  points=c(11, 15, 18))

# place three data frames into list
df_list <- list(df1, df2, df3)

# attempt to row bind together all three data frames
rbind(df_list)








