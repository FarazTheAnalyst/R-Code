# Example: Add Column If It Does Not Exist in R
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B'),
                 position=c('Gu', 'Fo', 'Fo', 'Fo', 'Gu', 'Gu', 'Fo'),
                 points=c(18, 22, 19, 14, 14, 11, 20))

# view data frame
df

# define custom function to add columns to data frame if they do not exist
add_cols <- function(df, cols) {
  add <- cols[!cols %in% names(df)]
  if(length(add) !=0 ) df[add] <- NA
     return(df)
}

# add three columns if they don't already exist
df <- add_cols(df, c("points", "assists", "rebounds"))
# view updated data frame
df
