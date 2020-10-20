#Reading the data
setwd("D:\\Universidad\\Jhon Hopkins\\Exploratory Data Analysis\\Week 1\\exdata_data_household_power_consumption")#set the wd where the file is located
consumption <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(consumption) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#subsetting the required data
subpower <- subset(consumption,consumption$Date=="1/2/2007" | consumption$Date =="2/2/2007")

#Creating the histogram
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
