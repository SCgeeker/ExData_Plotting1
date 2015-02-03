png(file = "plot3.png", width = 480, height = 480)
with(UCI_P, 
     plot( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_1)), 
           type = "l", ylab =  "Energy sub metering", xlab = "" )  )
with(UCI_P, 
     lines( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_2)), 
           type = "l", col = "red")  )
with(UCI_P, 
     lines( as.POSIXct(paste(Date, Time)) ,  as.numeric(as.character(Sub_metering_3)), 
           type = "l", col = "blue")  )
legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")) 
dev.off()
