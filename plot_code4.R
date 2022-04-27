
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

plot(y = byday_df$Global_reactive_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)
