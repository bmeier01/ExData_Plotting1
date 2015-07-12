# Import data, subset (as done at the very beginning before plot1)

#install.packages("readr")
#library("readr", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
#hpc <- read_csv2("~/Documents/Bioinformatics/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt", col_names=TRUE)
#hpc[hpc=="?"] <- NA
#anyNA(hpc)
#colSums(is.na(hpc))
#hpc$Date_new <- as.Date(hpc$Date,format="%d/%m/%Y")
#mydata <- subset(hpc, hpc$Date == "2007-02-02" | hpc$Date_new == "2007-02-01")

# Plot2
install.packages("lubridate")
library("lubridate", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")

png(filename ="plot2.png", width = 480, height = 480)
date_done <- dmy(mydata$Date)
time_done <- hms(mydata$Time)
mydata$date_time <- date_done + time_done
plot(mydata$date_time, mydata[,3], type="l", ylab="Global Active Power (kilowatts)", xlab=" ")
dev.off()