#Setting up page layout
par(mfrow = c(1,1))

#Graph 2 Line graph
plot(y = byday_df$Global_active_power,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
     )

#Exporting Graphs into appropriate format
dev.copy(png, file = "plot2.png", height = 480, width = 480)     
dev.off()