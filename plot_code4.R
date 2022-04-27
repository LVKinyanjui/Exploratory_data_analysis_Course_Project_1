#Setting up page layout
par(mfrow = c(2,2))

#Plot 1
plot(y = byday_df$Global_active_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

#Plot 2
plot(y = byday_df$Voltage,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
     )

#Plot 3
plot(y = byday_df$Sub_metering_1,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Energy submetering",
     xlab = " "
)

## Adding extra lines to plot
lines(byday_df$Sub_metering_2, type = "l", col = "red")
lines(byday_df$Sub_metering_3, type = "l", col = "blue")

#Plot 4
plot(y = byday_df$Global_reactive_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)

#Exporting Graphs into appropriate format
dev.copy(png, file = "plot4.png", height = 480, width = 480)     
dev.off()
