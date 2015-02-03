#2. Making Plots
require(RColorBrewer)
png(file = "plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(UCI_P$Global_active_power)), col = brewer.pal(3,"YlOrRd")[3],
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()