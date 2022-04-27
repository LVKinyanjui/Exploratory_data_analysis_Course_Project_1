#Setting up page layout
par(mfrow = c(1,1))

#Graph 3 Line Graph
plot(y = byday_df$Sub_metering_1,
     x = byday_df$Datetime,
     type = "l",
     ylab = "Energy submetering",
     xlab = " "
)

#Adding extra lines to plot
lines(byday_df$Sub_metering_2, type = "l", col = "red")
lines(byday_df$Sub_metering_3, type = "l", col = "blue")

# I can't get the legend to work right
legend(x= 40, y = 0, legend = c(1, 2, 3), col = c("black", "red", "blue"))

#Exporting Graphs into appropriate format
dev.copy(png, file = "plot3.png", height = 480, width = 480)     
dev.off()