source("./common.R")
source("./plot2.R")
source("./plot3.R")

# loads the 1-2/2/2007 data and plots 4 plots into plots/plot4.png
# plot1 - global active power per datetime
# plot2 - sub metering per datetime
# plot3 - voltage per datetime
# plot4 - global reactive power per datetime
plot4 = function() {    
    data = loadData()
    startPlotToFile("./plot4.png")
    par(mfcol=c(2,2))
    plot2(TRUE, data)
    plot3(TRUE, data)
    
    with(data, plot(DateTime, Voltage, type = "l", xlab = "datetime"))
    
    with(data, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))
    
    endPlotToFile()
}
    