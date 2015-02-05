#1. Loading the data
DATAzip <- "exdata-data-household_power_consumption.zip"
file_ls <- as.character( unzip(paste0("../",DATAzip), list = TRUE)$Name )

require(data.table)
UCI <- data.table(read.table(unz(paste0("../",DATAzip),file_ls), sep = ";", head = TRUE))
# Transfer Date format
UCI[,Date:=as.Date(as.character(Date), "%d/%m/%Y")]
# Locate the data for analysis
TARGET_DATE <- c("2007-02-01","2007-02-02")
UCI_P <- UCI[Date == TARGET_DATE[1] | Date == TARGET_DATE[2],]
# check missing values
dim( UCI_P[sum( grep("?",1:dim(UCI_P)[1], fixed = TRUE) ) > 0,] )[1]

