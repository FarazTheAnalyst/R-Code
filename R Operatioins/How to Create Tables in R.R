# Create a Table from Existing Data
# make this example reprooducible
set.seed(1)

# define data
df <- data.frame(team=rep(c('A', 'B', 'C', 'D'), each=4),
                 pos=rep(c('G', 'F'), times=8),
                 points=round(runif(16, 4, 20),0))

# view head of data
head(df)

# create table with "position" as rows and "team" as columns
tab1 <- table(df$pos, df$team)
tab1

# Create a Table from Scratch
# create matrix with 4 columns
tab <- matrix(rep(2, times=8), ncol=4, byrow=TRUE)

# define column names and row names of matrix
tab
colnames(tab) <- c("A", "B", "C", "D")
rownames(tab) <- c('F', 'G')


# convert matrix to table
tab <- as.table(tab)

# convert matrix to table
tab <- as.table(tab)
