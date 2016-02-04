
#------------------------------------------------------------------------
#follow this code if data isn't already downloaded and filtered by date
# load library
library(dplyr)

# set working directory
setwd("/Users/elissachasen/Google Drive/coursera/exploratory data analysis/project 1/ExData_Plotting1")
# read data
dat1 <- read.table("household_power_consumption.txt", 
                   header = TRUE, sep = ";", na.strings = "?")

# make new data frame for just dates of interest
dat1 <- filter(dat1, Date == "1/2/2007"| Date == "2/2/2007")
#-------------------------------------------------------------------------

# new code for plot 2 
# load library
library(lubridate)
# dates are ordered d, m, y
# time is stored H, M, S
# create datatime variable
dat1$DateTime <- strptime(paste(dat1$Date, dat1$Time), format="%d/%m/%Y %H:%M:%S")
 
png(file = "Plot 2.png")
plot(dat1$DateTime, dat1$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

