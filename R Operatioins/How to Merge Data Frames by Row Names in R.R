# create first data frame
df1 <- data.frame(point=c(99, 90, 86, 88, 95),
                  assist=c(33, 28, 31, 39, 34))

rownames(df1) <- c(1, 2, 3, 4, 5)
df1

# create second data frame
df2 <- data.frame(rebounds=c(17, 15, 22, 26, 25),
                  blocks=c(7, 7, 15, 12, 14))

rownames(df2) <- c(3, 4, 5, 6, 7)

df2

# Example 1: Perform Inner Join Using Row Names
# perform inner join using row names
merge(df1, df2, by=0)

# Example 2: Perform Left Join Using Row Names
# perform left join using row names
merge(df1, df2, by=0, all.x=TRUE)

# Example 3: Perform Outer Join Using Row Names
# perform outer join using row names
merge(df1, df2, by=0, all=TRUE)
