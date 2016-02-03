# load library
library(dplyr)
# set working directory
setwd("./Google Drive/coursera/exploratory data analysis/project 1/")
# read data
dat1 <- read.table("household_power_consumption.txt", 
                   header = TRUE, sep = ";", na.strings = "?")
# make new data frame for just dates of interest
data <- filter(dat1, Date == "2/1/2007"| Date == "2/2/2007")

hist(data$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power",
     breaks = 10)
