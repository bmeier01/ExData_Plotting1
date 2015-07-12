# Import data, subset (as done at the very beginning before plot1)

#install.packages("readr")
#library("readr", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")
#hpc <- read_csv2("~/Documents/Bioinformatics/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt", col_names=TRUE)
#hpc[hpc=="?"] <- NA
#anyNA(hpc)
#colSums(is.na(hpc))
#hpc$Date_new <- as.Date(hpc$Date,format="%d/%m/%Y")
#mydata <- subset(hpc, hpc$Date == "2007-02-02" | hpc$Date_new == "2007-02-01")

# Plot4
png(filename ="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(mydata$date_time, mydata[,3], type="l", ylab="Global Active Power (kilowatts)", xlab=" ")
plot(mydata$date_time, mydata$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(mydata$date_time, mydata$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="")
lines(mydata$date_time,mydata$Sub_metering_2,col="red", type="l")
lines(mydata$date_time,mydata$Sub_metering_3,col="blue", type="l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = "solid", bty="n", cex=0.8, col=c("black", "red", "blue"))
plot(mydata$date_time, mydata$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()