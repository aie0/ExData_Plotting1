source("./common.R")

# loads the 1-2/2/2007 data and plots global active power per datetime plot into plots/plot2.png
# isSubGraph - TRUE if data is reiceved as a parameter, FALSE if loading is needed
# dataToUse - data to plot
plot2 = function(isSubGraph = FALSE, dataToUse = NULL) {    
    if (isSubGraph) {
        data = dataToUse
        yLabel = "Global Active Power"
    } else {
        data = loadData()
        yLabel = "Global Active Power (kilowatts)"
    }
    
    if (!isSubGraph)
        startPlotToFile("./plot2.png")
    with(data, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = yLabel))
    if (!isSubGraph)
        endPlotToFile()
}
    