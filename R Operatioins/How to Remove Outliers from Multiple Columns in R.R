# create data frame
df <- data.frame(index=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 var1=c(4, 4, 5, 4, 3, 2, 8, 9, 4, 5),
                 var2=c(1, 2, 4, 4, 6, 9, 7, 8, 5, 29),
                 var3=c(9, 9, 9, 5, 5, 3, 4, 5, 11, 34))

# Step 2: Define outlier function.
outliers <- function(x){
  Q1 <- quantile(x, probs=.25)
  Q3 <- quantile(x, probs=.75)
  iqr <- Q3-Q1
  S
  
  upper_limit = Q3 + (iqr*1.5)
  lower_limit = Q1 - (iqr*1.5)
  
  x > upper_limit | x < lower_limit
}

remove_outliers <- function(df, cols = names(df)) {
  for (col in cols) {
    df <- df[!outliers(df[[col]]),]
    
  }
  df
}

# Step 3: Apply outlier function to data frame.
remove_outliers(df, c("var1", "var2", "var3"))
