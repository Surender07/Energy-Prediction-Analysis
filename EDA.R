data <- read.csv("UCI-electricity/UCI_data.csv")

# Display the first few rows of the data
head(data)

# Display the last few rows of the data
tail(data)

# Display the structure of the data
str(data)

library(striprtf)

# Specify the path to your RTF file
file_path <- "UCI-electricity/description.rtf"

# Read the RTF file
rtf_content <- read_rtf(file_path)

# Display the content
cat(rtf_content)

# Count of missing values in each column
colSums(is.na(data))

# Percentage of missing values in each column
colMeans(is.na(data)) * 100


# Set up the plotting area for multiple plots
par(mfrow=c(3, 1), mar=c(4, 4, 2, 1), oma=c(0, 0, 2, 0))

# Plot the histograms for temperature variables
par(mfrow=c(2, 5))
hist(data$T1, main="Kitchen", xlab="T1 (Celsius)", col="blue")
hist(data$T2, main="Living Room", xlab="T2 (Celsius)", col="green")
hist(data$T3, main="Laundry Room", xlab="T3 (Celsius)", col="red")
hist(data$T4, main="Office Room", xlab="T4 (Celsius)", col="purple")
hist(data$T5, main="Bathroom", xlab="T5 (Celsius)", col="orange")
hist(data$T6, main="Outside North", xlab="T6 (Celsius)", col="yellow")
hist(data$T7, main="Ironing Room", xlab="T7 (Celsius)", col="pink")
hist(data$T8, main="Teenager Room 2", xlab="T8 (Celsius)", col="cyan")
hist(data$T9, main="Parents Room", xlab="T9 (Celsius)", col="brown")
hist(data$T_out, main="Outside Chievres", xlab="T_out (Celsius)", col="grey")

# Add an overall title for the temperature histograms
mtext("Histograms of Temperature Variables", outer = TRUE, line = -2, cex = 1.5)

# Plot the histograms for humidity variables
par(mfrow=c(2, 5))
hist(data$RH_1, main="Kitchen", xlab="RH_1 (%)", col="blue")
hist(data$RH_2, main="Living Room", xlab="RH_2 (%)", col="green")
hist(data$RH_3, main="Laundry Room", xlab="RH_3 (%)", col="red")
hist(data$RH_4, main="Office Room", xlab="RH_4 (%)", col="purple")
hist(data$RH_5, main="Bathroom", xlab="RH_5 (%)", col="orange")
hist(data$RH_6, main="Outside North", xlab="RH_6 (%)", col="yellow")
hist(data$RH_7, main="Ironing Room", xlab="RH_7 (%)", col="pink")
hist(data$RH_8, main="Teenager Room 2", xlab="RH_8 (%)", col="cyan")
hist(data$RH_9, main="Parents Room", xlab="RH_9 (%)", col="brown")
hist(data$RH_out, main="Outside Chievres", xlab="RH_out (%)", col="grey")

# Add an overall title for the humidity histograms
mtext("Histograms of Humidity Variables", outer = TRUE, line = -22, cex = 1.5)

# Plot the histograms for additional numerical variables
par(mfrow=c(2, 3))
hist(data$Press_mm_hg, main="Pressure (Chievres)", xlab="Press_mm_hg (mm Hg)", col="blue")
hist(data$Windspeed, main="Wind Speed (Chievres)", xlab="Windspeed (m/s)", col="green")
hist(data$Visibility, main="Visibility (Chievres)", xlab="Visibility (km)", col="red")
hist(data$Tdewpoint, main="Dewpoint (Chievres)", xlab="Tdewpoint (Celsius)", col="purple")
hist(data$rv1, main="Random Variable 1", xlab="rv1", col="orange")
hist(data$rv2, main="Random Variable 2", xlab="rv2", col="yellow")
hist(data$TARGET_energy, main="Energy Use (Wh)", xlab="TARGET_energy (Wh)", col="pink")

# Add an overall title for the additional numerical variable histograms
mtext("Histograms of Additional Numerical Variables", outer = TRUE, line = -42, cex = 1.5)
