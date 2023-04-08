# Example 1: Create a Categorical Variable from Scratch
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 10, 12),
                 var4=c(14, 16, 22, 19, 18))

# view data frame
df

# add categorical variable named "type" to data frame
df$type <- factor(c("A", "B", "B","C", "D"))

# view updated data frame
df

# Example 2: Create a Categorical Variable (with Two Values) from 
# Existing Variable
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 10, 12),
                 var4=c(14, 16, 22, 19, 18))

# view data frame
df

# add categorical variable named "type" using values from "var4" column
df$type <- as.factor(ifelse(df$var1 < 4, 1, 0))

# view updated data frame
df

# Example 3: Create a Categorical Variable (with Multiple Values)
# from Existing Variable
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 10, 12),
                 var4=c(14, 16, 22, 19, 18))

# view data frame
df

# add categorical variable named "type" using values from "var1" column
df$type <- as.factor(ifelse(df$var1 < 3, "A",
                            ifelse(df$var1 < 4, "B", 
                                   ifelse(df$var1 < 5, "C",
                                          ifelse(df$var1 < 6, "D", "E")))))

# view updated data frame
df






















