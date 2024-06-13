data <- read.csv("UCI-electricity/UCI_data.csv")


# Display the first few rows of the data
head(data)

# Display the last few rows of the data
tail(data)

# Display the structure of the data
str(data)



# Count of missing values in each column
colSums(is.na(data))

# Percentage of missing values in each column
colMeans(is.na(data)) * 100


