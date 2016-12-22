Testdata <- "./household_power_consumption.txt"
Read_Data <- read.table(Testdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Subset_Data <- Read_data[Read_data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(Subset_Data$Date, Subset_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Subset_Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()