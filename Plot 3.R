#------------------------repeated from plot 1----------------------------------

# run the following code (between lines of "---") 
#if you haven't created previous plots first

# load library
library(dplyr)

# set working directory
setwd("/Users/elissachasen/Google Drive/coursera/exploratory data analysis/project 1/ExData_Plotting1")
# read data
dat1 <- read.table("household_power_consumption.txt", 
                   header = TRUE, sep = ";", na.strings = "?")

# make new data frame for just dates of interest
data <- filter(dat1, Date == "1/2/2007"| Date == "2/2/2007")
#-----------end code needed from plot 1----------------------------------------

#-------------repeated from plot 2--------------------------------------

#run this code if you have not yet created plot 2
# load library
library(lubridate)

# create datatime variable
dat1$DateTime <- strptime(paste(dat1$Date, dat1$Time), format="%d/%m/%Y %H:%M:%S")

#-----------end code needed from plot 2----------------------------------

#----------code to create plot 3----------------------------------------
png(file = "Plot 3.png")
plot(dat1$DateTime, y = dat1$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "")
lines(dat1$DateTime, dat1$Sub_metering_2, col = "red")
lines(dat1$DateTime, dat1$Sub_metering_3, col = "blue")
legend("topright", lty= 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
