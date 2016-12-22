Testdata <- "./household_power_consumption.txt"
Read_data <- read.table(Testdata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
SubSet_Data <- Read_data[Read_data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(SubSet_Data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()