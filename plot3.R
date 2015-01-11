source("./common.R")

# loads the 1-2/2/2007 data and plots sub metering per datetime plot into plots/plot3.png
# isSubGraph - TRUE if data is reiceved as a parameter, FALSE if loading is needed
# dataToUse - data to plot
plot3 = function(isSubGraph = FALSE, dataToUse = NULL) {    
    if (isSubGraph) {
        data = dataToUse
        legendBty = "n"
    } else {
        data = loadData()
        legendBty = "o"
    }           
    
    if (!isSubGraph)
        startPlotToFile("./figure/plot3.png")
    with(data, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
    with(data, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
    with(data, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
    legend("topright", lty = 1, bty = legendBty, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    if (!isSubGraph)
        endPlotToFile()
}
    