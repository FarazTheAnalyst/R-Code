library("dplyr")
library("ggplot2")
library(GGally)


df <- read.csv("C:\\Users\\Dell\\Downloads\\coaster_db.csv")

head(df)

# Step 1: Data Understanding¶
# Data frame dim
# head tail
# data types
# describe

colnames(df)

tail(df, 5)

dim(df)

str(df)

summary(df)

# Data Prepration
# Dropping irrelevant column and rows
# identifying duplicated column
# Renaming Columns
# Feature Creation

#Example of droping columns
#df <- df %>% 
  #select(-"Opening.date" )

df <- df %>%
  select("coaster_name" , 
                  "Location", "Status",
                  "Opening.date" ,
                  "Type", "Manufacturer",
                  "year_introduced",
                  "latitude", "longitude",
                  "Type_Main",
                  "opening_date_clean",
                  "speed_mph",
                  "height_ft",
                  "Inversions_clean", "Gforce_clean")

dim(df)

str(df)

sum(is.na(df$opening_date_clean))

df$opening_date_clean <- as.Date(df$opening_date_clean, format = "%Y-%m-%d", na.rm = TRUE)

df$year_introduced <- as.integer(df$year_introduced)

str(df)

#Rename Our Columns
df <- df %>%
  rename(
    Coaster_Name = coaster_name,
    Year_Introduced = year_introduced,
    Latitude = latitude,
    Longitude = longitude,
    Opening_Date = opening_date_clean,
    Speed_mph = speed_mph,
    Height_ft = height_ft,
    Inversions = Inversions_clean,
    Gforce = Gforce_clean
  )

head(df)

colSums(is.na(df))

#first Method
df[duplicated(df), ]

#Second Method
df %>% 
  filter(duplicated(.))

df %>%
  filter(duplicated(Coaster_Name))

df %>% 
  filter(Coaster_Name == "Crystal Beach Cyclone")

colnames(df)

df <- df %>% 
  distinct(Coaster_Name, Location, Opening_Date, .keep_all = TRUE) %>% 
  arrange(row_number())

dim(df)


#Step 3: Feature Understanding
# (Univarite Analysis)
# Plotting Feature Distribution
# Histogram
# KDE
# Boxplot

table(df$Year_Introduced)

df %>% 
  count(Year_Introduced)


year_count <- df %>% 
  group_by(Year_Introduced) %>% 
  summarise(counts = n()) %>% 
  arrange(desc(counts)) %>% 
  top_n(10)

year_count
ggplot(year_count, aes(as.factor(Year_Introduced), y = counts)) +
  geom_bar(stat = "identity", fill = "red") +
  labs(title = "Top 10 year Coaster Introduced",
       x = "year introduced",
       y = "counts") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#first Methos
hist(df$Speed_mph, breaks = 20, 
     main = 'Coaster Speed (mph)',
     xlab = 'Speed (mph)')  

#Second Method
df %>% 
  ggplot(aes(x=Speed_mph)) +
  geom_histogram(bins = 20, fill = "blue", color = "black") +
  labs(title = "Coaster Speed (mpg)", 
       y = "Frequency", 
       x = "Speed (mph)")


#Density plot
ggplot(df, aes(x = Speed_mph)) +
  geom_density(fill = "skyblue", color = "blue") +
  labs(title = "Coaster Speed (mph)", x = "Speed (mph)", y = "Density")


#Step 4: Feature Relationship
#Scatterplot
#Heatmap Correlation
#Pairplot
#Groupby Comparisons

#scatter plot
ggplot(df, aes(x = Speed_mph, y = Height_ft, color = Year_Introduced)) +
  geom_point() +
  labs(title = "Coaster Speed vs. Height", x = "Speed (mph)", y = "Height (ft)") +
  theme_minimal()




ggpairs(df, 
        columns = c("Year_Introduced", "Speed_mph", "Height_ft", "Inversions", "Gforce"),
        title = "Pairplot of Coaster Attributes",
        lower = list(continuous = "points"),
        upper = list(continuous = "points"),
        axisLabels = "internal",
        aes(color = Type_Main)
)

ax <-  df[, c("Year_Introduced", "Speed_mph", "Height_ft", "Inversions", "Gforce")]

ax <-  na.omit(ax)

df_corr <- cor(ax)

df_corr


colnames(df)

heatmap(df_corr, Rowv = NA, Colv = NA, col = cm.colors(160), scale="column",
         main = "Correlation Heatmap")

#Step 5: Ask a Question about the data
#Try to answer a question you have about the data using a plot or statistic
#What are the locaitons with fastest roller coaster (minimum of 10)?

df_filtered <- df %>%
  filter(Location != 'Other') %>%
  group_by(Location) %>%
  summarise(mean_speed = mean(Speed_mph, na.rm = TRUE), count = n()) %>%
  filter(count >= 10) %>%
  arrange(mean_speed)

df_filtered

ggplot(df_filtered, aes(y= reorder(Location, mean_speed), mean_speed)) +
  geom_bar(stat = "identity", fill = "purple") +
  geom_text(aes(label = round(mean_speed, 2)), hjust = -0.2, size = 3) +
  labs(x = "Avg Coaster Speed", y = "Location",
       title = "Avg coaster Speed by location") +
  theme_minimal() +
  theme(axis.text.y  = element_text(size = 10))





