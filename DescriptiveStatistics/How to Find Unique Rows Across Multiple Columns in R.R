# create dat frame
df <- data.frame(conf=c('East', 'East', 'East', 'West', 'West', 'West'),
                 pos=c('G', 'G', 'F', 'G', 'F', 'F'),
                 points=c(33, 28, 31, 39, 34, 40))

# view data frame
df

# find unique rows across conf and pos columns
df_unique <- unique(df[c("conf", "pos")])

# find unique rows across mutiple column keep other columns
df_unique <- df[!duplicated(df[c("conf", "pos")]),]

# view results 
df_unique
