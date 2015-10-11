require(data.table)
##Loading data
file<-read.table("household_power_consumption.txt", header=TRUE, sep= ";",stringsAsFactors=FALSE, na.strings = c("?",""))
reqdata<-file[file$Date %in% c("1/2/2007","2/2/2007"),]
reqdata$Date<-as.Date(reqdata$Date,format = "%d/%m/%Y")

png("plot1.png",width = 480,height = 480)
hist(reqdata$Global_active_power,col="red",xlab = "Global Active Power(Kilowatts)",
     main="Global Active Power")
dev.off()