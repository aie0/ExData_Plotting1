source("./common.R")

# loads the 1-2/2/2007 data and plots global active power histogram into plots/plot1.png
plot1 = function() {    
    data = loadData()
    startPlotToFile("./figure/plot1.png")
    hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
    endPlotToFile()
}
    