png(file = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
with(UCI_P,{
  plot( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Global_active_power)), 
             type = "l", ylab =  "Global Active Power", xlab = "" )  
  plot( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Voltage)), 
        type = "l", ylab =  "Voltage", xlab = "datetime" )  
  plot( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_1)), 
             type = "l", ylab =  "Energy sub metering", xlab = "" )  
  lines( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_2)), 
              type = "l", col = "red")
  lines( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_3)), 
              type = "l", col = "blue")  
  legend("topright", pch = 1, col = c("black", "red", "blue"),bty="n", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")) 
  plot( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Global_reactive_power)), 
        type = "l", ylab =  "Global_reactive_power", xlab = "datetime" )  
})
dev.off()