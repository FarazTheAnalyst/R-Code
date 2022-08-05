baskets.of.Granny <- c(12,4,4,6,9,3)
baskets.of.Geraldine <- c(5,3,2,2,12,9)
Granny.money <- baskets.of.Granny * 120
Geraldine.money <- baskets.of.Geraldine * 145
Granny.money + Geraldine.mone 
baskets.of.Granny * 120 + baskets.of.Geraldine * 145

?complex
4+2*3
(4+2)*3
log(1:3) #natural logarithms
log(1:3, base = 2)
x <- log(1:3)
exp(x)
log2(1:3)
1000^2
1e+06

4.12e-2
1.2e6/2e3
2e3
round(123.456, digits = 2)
round(-1234.456, digits = -1)
signif(-123.456, digits = 4)
?signif
?Trig
cos(120) # angle in radians
cos(120 * pi / 180) #angle in degree
'+'(2, 3)
4-Inf
is.finite(10^(305:310))
is.finite(10^(305:310))
is.infinite(10^(305:310))
 4- Inf
 Inf / Inf
NaN + 4
is.nan(NaN + 4)
is.finite(NaN + 4)
is.infinite(NaN + 4)
x <- NA
x + 4
log(x)
is.na(x)
is.nan(x)
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(NaN)
baskets.of.Granny <- c(12,3,5,6,9,3)
str(baskets.of.Granny)
length(baskets.of.Granny)

authors <- c("Akhtar", "Asif")
str(authors)

is.foo(baskets.of.Granny)
is.numeric(baskets.of.Granny)
is.integer((baskets.of.Granny))

x <- c(0L,6L,7L,8L,9L)
is.integer(x)
is.numeric(x)


seq(from = 4.5, to = 2.5, by = -0.5)
seq(from = -4.5, to = 1.3, length.out = 9)


seq(4.5, 2.5, -0.5)
baskets.of.Granny <- c(12,4,4,6,9,3)
baskets.of.Geraldine <- c(5,3,2,2,12,9)

all.baskets <- c(baskets.of.Granny, baskets.of.Geraldine)
all.baskets

rep(c(12,4,4,6,9,3), times = 3)
rep(c(0,0,7), times = 3)
rep(c(0,0,7), each = 3)
rep(c(2,4,2), each = 3)

rep(c(0,7), times = c(4,2))
rep(1:3, length.out = 7)
rep(c(1,3,4,6,7), length.out = 7)

numbers <- 30:1
numbers
numbers1 <- 1:30
numbers1
numbers[5]
numbers[c(5,11,3)]
indices <- c(5,11,3)
numbers[indices]

numbers[-3]
numbers[-(1:20)]
numbers[-(1:20)]

numbers[1:20] # wrong method

baskets.of.Granny[3] <- 5
baskets.of.Granny
baskets.of.Geraldine[c(2,4)] <- 4
baskets.of.Geraldine

Granny.copy <- baskets.of.Granny
baskets.of.Granny[4] <- 
  11
baskets.of.Granny
baskets.of.Granny <- Granny.copy
baskets.of.Granny
baskets.of.Granny > 5

which(baskets.of.Granny > 5)
which(baskets.of.Granny > 5)
which(baskets.of.Granny > 5)

the.best <- baskets.of.Geraldine < baskets.of.Granny
which(the.best)


the.best <- baskets.of.Geraldine > baskets.of.Granny
which(the.best)

baskets.of.Granny[the.best]
baskets.of.Geraldine[the.best]


x <- c(3,6,1,NA,2)
x[x > 2]
x <- c(3,6,1,NA,2)
x[x > 2]

x > 2
x[4]
which(x > 2)

min.baskets <- baskets.of.Granny == min(baskets.of.Granny)
max.baskets <- baskets.of.Granny == max(baskets.of.Granny)

max.baskets | min.baskets

is.na(x)
x[!is.na(x)]

sum(the.best)
any(the.best)
all(the.best)

min(baskets.of.Granny)
max(baskets.of.Granny)

sum(baskets.of.Geraldine, baskets.of.Granny)

sum <- c(3,6,2,NA,1)
sum(x)
sum(x, na.rm = TRUE)
 
SUM <- C(3,6,2,NA,1)
sum(x)
sum(x, na.rm = TRUE)
prod <- c(3,6,2,NA,1)
prod(x)
prod(x, na.rm = TRUE)

min <- c(3,6,2,NA,1)
min(x)
min(x, na.rm = TRUE)
 max <- C(3,6,2,NA,1)
 max(x)
max(x, na.rm = TRUE)

z <- c(NA,NA,NA,NA)
max(z)
max(z, na.rm = TRUE)

cumsum(baskets.of.Granny)
cumprod(baskets.of.Granny)
cummax(baskets.of.Geraldine)
cummin(baskets.of.Geraldine)
cummin(x)


baskets.of.Granny <- c(12,4,4,6,9,3)
baskets.of.Geraldine <- c(5,3,2,2,12,9)


diff(baskets.of.Granny)

x <- c(3,6,1,NA,2)
diff(x)

Granny.pointers <- c(10, 2, 4, 0, 4, 1, 4, 2, 7, 2, 1, 2)
Granny.pointers <- c(10, 2, 4, 0, 4, 1, 4, 2, 7, 2, 1, 2)
points <- Granny.pointers * c(2, 3)
points
sum(points)
















diff(baskets.of.Granny)


sum(Granny.pointers * c(2, 3))


baskets.of.Granny
round(diff(baskets.of.Granny) / baskets.of.Granny * 100)
round(diff(baskets.of.Granny) / baskets.of.Granny[1:5] * 100)

baskets.of.Granny <- c(12, 4, 5, 6, 9, 3)

x <- "Hello world!"
is.character(x)
length(x)
nchar(x)
# creating a character vector with more than one element
x <- c("Hello", "world!")
is.character(x)
length(x)
nchar(x)

letters
LETTERS
letters[10]
LETTERS[24:26]

tail(letters, 5)
head(LETTERS, 10)

str(islands)
islands[c("Asia", "Africa", "Antarctica")]
names(islands)[1:9]
names(sort(islands, decreasing = TRUE)[1:6])


month.name
month.days <- c(31, 28, 31, 30, 31, 30, 30, 31, 31, 30, 31, 30, 31)
names(month.days) <- month.name
month.days

names(month.days[month.days == 31])
month.days == 31
names(month.days)

pangram <- "The quik brown fox jumps over the lazy dog"
pangram

strsplit(pangram, " ")

words <- strsplit(pangram, " ")[[1]]
words

unique(words)

unique(tolower(words))

paste(pangram)

toupper(words[c(4,9)])
tolower("some TEXT in Mixed CASE")
paste("The", "quik", "brown", "fox")

paste(c("The", "quik", "brown", "fox"))

paste(words, collapse = " ")
paste(words, collapse = "_")

paste("sample", 1:5)
paste(LETTERS[1:5], 1:5, sep = "_", collapse = "---")

# Reclying charachter vector

paste(c("A", "B"), c(1, 2, 4), 
      sep = "-")



paste(c("A"), c(1, 2, 3, 4, 5), sep = "-")

sort(letters, decreasing = TRUE)
sort(words)
words
?sort

head(state.name)
?head
head(substr(state.name, start = 1 , stop = 6))
grep("New", state.name)
state.name[29]

state.name

grep("New", state.name )
state.name[29]
state.name[32]
grep("New", state.name, value = TRUE)
grep("new", state.name, value = TRUE) #in lowercasenever work
state.name[grep(" ", state.name)]
state.name[grep("East", state.name)]

b <- c(1, 2, 3, 4, 5)
b
b[0]


sub("hello", "hi", "hello")
gsub("cheap", "sheeps's", "A wolf in a cheap clothing")

x <- c("file_a.csv", "file_b.csv", "file_c.csv")
y <- gsub("file_", " ", x)
y
gsub("\\.csv", " ", y)

rwords <- c("bach", "back", "beech", "beach", "black")
grep("beach|beech", rwords)
rwords[grep("beach|beech", rwords)]
rwords[grep("be(a|e)ch", rwords)]
rwords[grep("b(e*|a*)ck", rwords)]
            
            
install.packages("stringr")            
library("stringr")

directions <- c("North", "East", "South", "South")
factor(directions)
factor(directions, levels = c("North", "East", "South", "West"))
factor(directions,
       levels = c("North", "East", "South", "West"),
       labels = c("N", "E", "S", "W"))


directions <- factor(c("Norh", "East", "South", "South"))
directions

as.character(directions)
as.numeric(directions)
numbers <- factor(c(9, 8, 10, 8, 9))
str(numbers)

as.character(numbers)
as.numeric(numbers)
?factor
as.numeric(as.character(numbers))

str(state.region)
levels(state.region)
levels(state.region) <- c("NE", "S", "NC", "W")
head(state.region)



levels(state.region) <- c(1,2,3,4)
head(state.region)

chr <- factor(c("A", "NC", "C", "DE" ))
str(chr)

nlevels(state.region)
length(levels(state.region))
levels(state.region)[2:3]

head(state.region)
table(state.region)
state.region

status <- c("Lo", "Hi", "Med", "Med", "Hi")
ordered.status <- factor(states,
                         levels = c("Lo", "Med", "Hi"),
                         ordered = TRUE)
ordered.status

table(status)
table(ordered.states)

xd <- as.Date("2016-08-05")
xd
str(xd)
weekdays(xd)

xd + 7
xd - 7

xd + 0:6

weekdays(xd + 0:6)

startDate <- as.Date("2016-01-01")
xm <- seq(startDate, by = "2 months", length.out = 6)
xm

months(xm)
quarters(xm)
as.Date("5 Aug 2016", format = "%d %B %Y")

apollo <- "July 20, 1969, 20:17:39"
apollo.fmt <- "%B %d, %Y, %H:%M:%S"
xct <- as.POSIXct(apollo, format = apollo.fmt, tz = "UTC")
xct



apollo <- "July 20, 1969, 20:17:39"
apollo.fmt <- "%B %d, %Y, %H:%M:%S"
xct <- as.POSIXct(apollo, format = apollo.fmt, tz = "UTC")
xct
months(xct)
weekdays(xct)


format(xct, "%d/%m/%y")
format(xct, "%d/%m/%y")
format(xct, "%M minites past %I %p, on %  %B %Y")

xct + 7*86400
xct + 3*60*60
as.Date(xct) - 7

Sys.time()
Sys.time() < xct
Sys.time() > xct


dec.start <- as.POSIXct("1950-01-01")
dec <- seq(dec.start, by = "10 years", length.out = 4)
dec

dec > xct

xlt <- as.POSIXlt(xct)
xlt
xlt$mon


dlt <- as.POSIXlt("1950-06-30")
dlt
dlt$year
dlt$mon
xlt$mday
xlt$wday
xlt$yday
dlt$wday

unclass(xlt)

# more date and time fun(ctionality
install.packages("chron")
library("chron")
?chron

install.packages("lubridate")
library("lubridate")
install.packages("xts")

# chron

dts <- dates(c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92" ))
dts
tms <- times(c("23:03:20", "22:29:5601:03:30", "18:21:03", "16:56:26"))
tms
x <- chron(dates = dts, time = tms)
x
c(dts[1], dts[1] + 10)
c(dts[1], dts[1] + 10)
dts[1] - 31
dts[1] - dts[3]
dts[dts > "01/25/92"]
dts > dts[3]
range(dts)
diff(x)
sort(dts)[1:3]

# Stringr
library("stringr")
?str_detect()
fruit <- c("apple", "banana", "pear", "pinapple")
str_detect(fruit, "a")
str_detect(fruit, "^a")
str_detect(fruit, "a$")
str_detect(fruit, "b")
str_detect(fruit, "[aeiou]")
str_detect(fruit, "banana")

str_detect("aecfg", letters)
str_detect(fruit, "^p", negate = FALSE)

?str_extract()

# str_extract()

shopping_list <- c("apples x4", "bag of flour", "bag of suger", "milk x2")
str_extract(shopping_list, "\\d")
str_extract(shopping_list, "[a-z]+")
str_extract(shopping_list, "[a-z]{1,4}")
str_extract(shopping_list, "\\b[a-z]{1,4}\\b")

str_extract_all(shopping_list, "[a-z]+")
str_extract_all(shopping_list, "\\b[a-z]+\\b")
str_extract_all(shopping_list, "\\d")

str_extract_all(shopping_list, "\\b[a-z]+\\b", simplify = TRUE)
str_extract_all(shopping_list, "\\d", simplify = TRUE)
str_extract_all("This is, suprisingly, a sentence.", boundary("word"))


?str_length
str_length(letters)
str_length(NA)
str_length(factor("abc"))
str_length(factor("letters"))
str_length(c("1", "like", "programming", NA))

u1 <- "\u00fc"
u2 <- stringi::stri_trans_nfd(u1)
u1
u2

str_length(u1)
str_length(u2)
str_count(u1)
str_count(u2)

?str_locate

fruit <- c("apple", "banana", "pear", "pineapple")
str_locate(fruit, "$")
str_locate(fruit, "a")
str_locate(fruit, "e")
str_locate(fruit, c("a", "b", "p", "p"))


str_locate_all(fruit, "a")
str_locate_all(fruit, "e")
str_locate_all(fruit, "")


?str_match

strings <- c(" 219 733 8965", "329-293-8753 ", "banana", "595 794 7569",
             "387 287 6718", "apple", "233.398.9187  ", "482 952 3315",
             "239 923 8115 and 842 566 4692", "Work: 579-499-7527", "$1000",
             "Home: 543.355.3679")
phone <- "([2-9][0-9]{2})[- .]([0-9]{3})[- .]([0-9]{4})"
str_extract(strings, phone)
str_match(strings, phone)
str_extract_all(strings, phone)
str_match_all(strings, phone)


x <- c("<a> <b>", "<a> <>", "<a>", "", NA)
str_match(x, "<(.*?)> <(.*?)>")
str_match_all(x, "<(.*?)>")

?str_replace()


fruits <- c("one apple", "two pears", "three bananas")
str_replace(fruits, "[aeiou]", "-")
str_replace_all(fruits, "[aeiou]", "-")
str_replace_all(fruits, "[aeiou]", toupper)
str_replace_all(fruits, "b", NA_character_)



str_replace(fruits, "([aeiou])", "")
str_replace(fruits, "([aeiou])", "\\1\\1")
str_replace(fruits, "[aeiou]", c("1", "2", "3"))
str_replace(fruits, c("a", "e", "i"), "-")

?str_split

fruits <- c(
  "apples and oranges and pears and bananas",
  "pineapples and mangos and guavas")
str_split(fruits, " and ")
str_split(fruits, " and ", simplify = TRUE) 
  
str_split(fruits, " and ", n = 3)
str_split(fruits, " and ", n = 2)
str_split(fruits, " and ", n = 5)
  
str_split_fixed(fruits, " and ", 3)
str_split_fixed(fruits, " and ", 4)

  
?str_sub
  
hw <- "Hadley Wickham"
  
str_sub(hw, 1, 6)
str_sub(hw, end = 6)
str_sub(hw, 8, 14)
str_sub(hw, 8)
str_sub(hw, c(1, 8), c(6, 14)) 
  
  
str_sub(hw, -1)
str_sub(hw, -7)
str_sub(hw, end = -7)
  
pos <- str_locate_all(hw, "[aeio]")[[1]]
str_sub(hw, pos)
str_sub(hw, pos[, 1], pos[, 2])

str_sub(hw, seq_len(str_length(hw)))
str_sub(hw, end = seq_len(str_length(hw)))

x <- "BBCDEF"
str_sub(x, 1, 1) <- "A"; x
str_sub(x, -1, -1) <- "K"; x
str_sub(x, -2, -2) <- "GHIJ"; x
str_sub(x, 2, -2) <- ""; x

?str_trim

str_trim("  String with trailing and leading white space\t")
str_trim("\n\nString with trailing and leading white space\n\n")

str_squish("  String with trailing,  middle, and leading white       space\t")
str_squish("\n\nString with excess,  trailing and leading white  space\n\n")

?str_wrap

thanks_path <- file.path(R.home("doc"), "THANKS")
thanks <- str_c(readLines(thanks_path), collapse = "\n")
thanks <- word(thanks, 1, 3, fixed("\n\n"))
cat(str_wrap(thanks), "\n")
cat(str_wrap(thanks, width = 40), "\n")
cat(str_wrap(thanks, width = 60, indent = 2), "\n")
cat(str_wrap(thanks, width = 60, exdent = 2), "\n")
cat(str_wrap(thanks, width = 0, exdent = 2), "\n")



x <- x[x != ""]
x <- paste(x, collapse = " ")
x

library("stringr")
str_wrap(x, 10) 

# matrix

first.matrix <- matrix(1:12, ncol = 4)
first.matrix

matrix(1:12, ncol = 4, byrow = TRUE)
str(first.matrix)
dim(first.matrix)
nrow(first.matrix)
ncol(first.matrix)
length(first.matrix)


my.array <- array(1:24, dim = c(3, 4, 2))
baskers.team <- rbind(baskets.of.Granny =c(12, 4, 5, 6, 9,3),
                      baskets.of.Geraldine =c(5, 4, 2, 4, 12,9))
attributes(my.array)$dim

?attributes
str(my.array)
dim(my.array)
length(my.array)

baskets.team <- rbind(
  baskets.of.Granny = 
    c(12, 4, 5, 6, 9, 3), 
  baskets.of.Geraldine = 
    c(5, 4, 2, 4, 12, 9))
baskers.team


baskets.of.Granny <- c(12, 4, 5, 6, 9, 3)
baskets.of.Geraldine <- c(5, 4, 2, 4, 12, 9)
baskets.team <- rbind(baskets.of.Granny, baskets.of.Geraldine)
baskets.team
cbind(1:3, 4:6, matrix(7:12, ncol = 2))
first.matrix[1:2, 2:3]
first.matrix[2:3, ]
first.matrix[-2, -3:-4]
first.matrix[-2, -3]

nr <- nrow(first.matrix)
nrow(first.matrix)
id <- nr * 2 + 2
first.matrix[-id]

first.matrix[-(2 * nrow(first.matrix) + 2)]
first.matrix[-c(1, 3), ]
first.matrix[2, , drop = FALSE]
first.matrix

first.matrix[3, 2] <- 4
first.matrix


first.matrix[2, ] <- c(1, 3)
first.matrix[2, (1:4)] <- c(1, 3, 4, 5)
first.matrix


matrix(1:2, 3:4)
first.matrix[1:2, 3:4] <- c(8, 4, 2, 1)  


                         
first.matrix[1:2, 3:4] <- matrix(c(8, 4, 2, 1), nrow = 2, ncol = 2, byrow = TRUE)
first.matrix


cbind(1:3, 4:6, matrix(7:12, ncol = 2))

rownames(baskets.team) <- c("Granny", "Geraldine")
rownames( baskets.team)

colnames(baskets.team) <- c("1st", "2nd", "3th", "4th", "5th","6th")
colnames(baskets.team)

baskets.team

colnames(baskets.team)[3] <- "3rd"
baskets.team


baskets.copy <- baskers.team
colnames(baskets.copy) <- NULL
baskets.copy

dimnames(baskets.team)

baskets.team[, c("2nd", "5th")]

baskets.team["Granny", , drop = FALSE]

first.matrix[1:2, 3:4] <- c(8, 4, 2, 1)
first.matrix


seconds.matrix <- matrix(1:3, nrow = 3, ncol = 4)
seconds.matrix

first.matrix + seconds.matrix


first.matrix + second.matrix[ , 1:3]
first.matrix + 1:3
first.matrix

first.matrix + matrix(c(1:3), nrow = 3, ncol = 4, byrow = TRUE)

rowSums(baskets.team)
rowMeans(baskets.team)
colSums(baskets.team)
colMeans(baskets.team)

baskets.team
first.matrix
t(first.matrix)
t(1:10)
t(first.matrix[2, ])
t(first.matrix[2:3, ])

square.matrix <- matrix(c(1, 0, 3, 2, 2, 4, 3, 2, 1), ncol = 3)

solve(square.matrix)

t(second.matrix)
first.matrix %*% t(second.matrix)

first.matrix %*% 1:4
1:3 %*% first.matrix


# Creating an Arrays
my.array <- array(1:24, dim = c(3, 4, 2))
my.array

my.vector <- 1:24
dim(my.vector) <- c(3, 4, 2)
my.vector
identical(my.array, my.array)

my.array[2, 3, 1]
my.array[, 3, 2, drop = FALSE]

my.array[, 3, 2]
my.array[2,  , ]
my.array

baskets.df <- as.data.frame(t(baskets.team))
baskets.df
str(baskets.df)
nrow(baskets.df)
ncol(baskets.df)
length(baskets.df)

employee <- c("John Doe", "Peter Gynn", "Jolie Hope")
salary <- c(21000, 23400, 26800)
startDate <- as.Date(c("2010-11-1", "2008-3-25", "2007-3-14"))

employ.data <- data.frame(employee, salary, startDate)
str(employ.data)


employ.data <- data.frame(employee, salary, startDate, 
                          stringsAsFactors = TRUE)
str(employ.data)



employ.data <- data.frame(employee, salary, startDate, 
                          stringsAsFactors = FALSE)

str(employ.data)

colnames(employ.data)
names(employ.data)

names(employ.data)[3] <- "firstday"
names(employ.data)

rownames(employ.data)
rownames(employ.data) <- c("Chef", "BigChef", "BiggerChef")
employ.data

baskets.df["3rd", "Geraldine"]
baskets.df[, 1]
str(baskets.df[, 1, drop =FALSE])

baskets.df$Granny


result <- rbind(baskets.df, "7th" = c(7, 4))
result
rownames(result)
baskets.df <- rbind(baskets.df, "7th" = c(7, 4))

baskets.df

new.baskets <- data.frame(Granny = c(3, 8), Geraldine = c(9, 4))
new.baskets
rownames(new.baskets) <- c("8th", "9th")

baskets.df <- rbind(baskets.df, new.baskets)

baskets.df[c("8th", "9th"), ] <- matrix(c(3, 8, 9, 4), ncol = 2)
baskets.df[c("8th", "9th"), ] <- c(3, 8, 9, 4)

baskets.df

# Collection of data sets arranged in a two dimensional rectangular organisation.
# Stores data tables that contains multiple data types in multiple column called fields.
# It's m*n array with similar data type.
# It is a list of vector of equal length. It is a generalized form of matrix.
# It has fixed number of rows and columns.	It has variable number of rows and columns.
# The data stored in columns can be only of same data type.	The data stored must be numeric, character or factor type.
# Matrix is homogeneous.	DataFrames is heterogeneous.


baskets.of.Gabrielle <- c(11, 5, 6, 7, 3, 12, 4, 5, 9)
baskets.df$Gabrielle <- baskets.of.Gabrielle
head(baskets.df, 4)
new.df <- data.frame(
  Gertrude = c(3, 5, 2, 1, NA, 3, 1, 1, 4),
  Guinevere = c(6, 9, 7, 3, 3, 6, 2, 10, 6))
head(cbind(baskets.df, new.df), 4)

baskets.team
baskets.list <- list(baskets.team, "2010-2011")
baskets.list


baskets.nlist <- list(scores  = baskets.team, season = "2010-2011")
baskets.nlist

names(baskets.nlist)
length(baskets.list)
 names(baskets.list)[1] <- "scores"
baskets.list


baskets.list[[1]]
baskets.list[1]

baskets.nlist["scores"]

baskets.list[-1]
baskets.nlist[-1]

baskets.list[1]
baskets.list[-1]

baskets.nlist[grepl("season", names(baskets.nlist))]
baskets.nlist[[1]] <- baskets.df
baskets.nlist[["scores"]] <- baskets.df
baskets.nlist$scores <- baskets.df

baskets.nlist
baskets.df

baskets.nlist[1] <- list(baskets.df)
baskets.list[1:2] <- list(baskets.df,"2009-2010")
baskets.list

baskets.nlist[[1]] <- NULL
baskets.nlist["scores"] <- NULL
baskets.nlist$scores <- NULL
baskets.nlist

baskets.nlist <- list(scores = baskets.df, season = "2010-2011")
baskets.nlist["scores"] <- list(NULL)
baskets.nlist


baskets.nlist$players <- c("Granny", "Geraldine")
baskets.nlist[["player"]] <- c("Granny", "Geraldine")
baskets.nlist["player"] <- list(c("Granny", "Geraldine"))
baskets.nlist


baskets.list[[3]] <- c("Granny", "Geraldine")
baskets.list[3] <- list(c("Granny", "Geraldine"))

baskets.list

baskets.list <- list(baskets.team, "2010-2011")
players <- list(rownames(baskets.team))

goal.list <- c(baskets.list, players)
goal.list

str(baskets.list)
str(baskets.nlist)

str(baskets.team)

x <- c(0.458, 1.6653, 0.83112)
percent <- round(x * 100, digits = 1)
result <- paste(percent, "%", sep = "")
print(result)

source("pastePercent.R")










































