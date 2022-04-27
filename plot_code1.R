# Graph 1 Histogram
hist(x = power_df$Global_active_power,
     col = "red",
     ylab = "Frequency",
     xlab = "Global Active Power(kilowatts)",
     main = "Global Active Power"
     )

#Exporting Graphs into appropriate format
dev.copy(png, file = "plot1.png", height = 480, width = 480)     
dev.off()