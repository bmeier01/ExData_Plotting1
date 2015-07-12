# Import data, subset, set Global_active_power numeric
install.packages("readr")
library("readr", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")

hpc <- read_csv2("~/Documents/Bioinformatics/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt", col_names=TRUE)
hpc[hpc=="?"] <- NA
anyNA(hpc)
colSums(is.na(hpc))
str(hpc)

hpc$Date_new <- as.Date(hpc$Date,format="%d/%m/%Y")
mydata <- subset(hpc, hpc$Date_new == "2007-02-02" | hpc$Date_new == "2007-02-01")

# Plot1
png(filename ="plot1.png", width = 480, height = 480)
gap = mydata[,3]
hist(gap, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()