##Create plot 3
> with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})
> lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
> lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
> legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
> 
