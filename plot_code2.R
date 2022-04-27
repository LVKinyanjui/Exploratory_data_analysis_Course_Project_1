#Graph 2 Line graph

par(mfrow = c(1,1))
plot(y = byday_df$Global_active_power,
     x = byday_df$Datetime,
     type = "l",
     )