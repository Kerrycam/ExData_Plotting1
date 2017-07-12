 library(readr)
> household_power_consumption <- read_csv("~/household_power_consumption.txt")
Parsed with column specification:
cols(
  `Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3` = col_character()
)
|========================================| 100%  126 MB
> View(household_power_consumption)
> #constrict date range
> 
> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
> house_a_data <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])
> #
> #
> #Convert class format
> house_a_data$Date <- as.Date(house_a_data$Date,"%d/%m/%Y")
> house_a_data<-cbind(house_a_data, "DateTime" = as.POSIXct(paste(house_a_data$Date, house_a_data$Time)))
> 
> #Plot hist
> hist(as.numeric(house_a_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
> 
> 
> 
> ###Create plot 2
> plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
