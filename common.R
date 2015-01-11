library(data.table)

# loads and returns 1-2/2/2007 data
loadData = function() {
    data = read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
    data$Date2 = as.Date(data$Date, format="%d/%m/%Y")
    filterDates = (data$Date2 == "2007-02-01" | data$Date2 == "2007-02-02")
    data = data[filterDates,]
    data$DateTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    setDT(data)[,c("Date2", "Date", "Time"):=NULL]
    data
}

# starts plotting into png file with received name
startPlotToFile = function(name) {
    png(file = name, width = 480, height = 480)
}

# ends plotting
endPlotToFile = function() {
    dev.off()
}