#Filtering for certain days of the week
byday_df <- filter( power_df, Date == "2006-12-14" | Date == "2006-12-15" | Date == "2006-12-16")

# #Graph 2 Line graph

par(mfrow = c(1,1))
plot(y = byday_df$Global_active_power,
     x = byday_df$Time,
     type = "l",
     )