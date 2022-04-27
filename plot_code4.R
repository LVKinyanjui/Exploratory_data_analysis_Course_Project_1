
par(mfrow = c(2,2))

plot(y = byday_df$Global_active_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

plot(y = byday_df$Voltage,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
     )

plot(y = byday_df$Sub_metering_1,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Energy submetering",
     xlab = " "
)

lines(byday_df$Sub_metering_2, type = "l", col = "red")
lines(byday_df$Sub_metering_3, type = "l", col = "blue")

plot(y = byday_df$Global_reactive_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)
