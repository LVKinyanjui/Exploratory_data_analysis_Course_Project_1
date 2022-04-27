library(tidyverse)
library(lubridate)

#LOADING DATASET FROM URL
if(!file.exists("./data"))
{dir.create("./data")}

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dest <- "./data/electric_power_consumption.zip"

if(!file.exists(dest))
{electric_power_consumption <- download.file(fileUrl, destfile = dest)
}

#Unzipping files
#doesn't work properly yet
unzip("./data/electric_power_consumption.zip", overwrite = TRUE)



# #READING DATASET INTO R
power_df <- read.table("household_power_consumption.txt",header = TRUE, sep = ";")


#Converting variables into numeric
power_df <- mutate(power_df, Global_active_power = as.numeric(Global_active_power),
                   Global_reactive_power = as.numeric(Global_reactive_power)
                  )
#Converting variables to date-time object
power_df <- mutate(power_df, Datetime = with(power_df, dmy(Date), hms(Time)),
                   Day = wday(Date, label = TRUE
                   ))

#Filtering for specific days and date
byday_df <- filter(power_df, Datetime >= "2007-02-01" & Datetime <= "2007-02-28"
                   )