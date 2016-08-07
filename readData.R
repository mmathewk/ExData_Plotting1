library(dplyr)
library(lubridate)
sourceURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destination <- "./data.zip"
download.file(sourceURL, destfile=destination, method="curl")
unzip(destination, overwrite = TRUE)
datf <- "household_power_consumption.txt"
tbl <- read.table(datf,header=TRUE,sep=";",stringsAsFactors = FALSE,na.string="?")
tdf <- tbl_df(tbl)
tdf <- mutate(tdf, DateTime=dmy_hms(paste(Date,Time)))
tdf <- filter(tdf,DateTime >= ymd_hms("2007-02-01 00:00:00") & 
                  DateTime < ymd_hms("2007-02-03 00:00:00"))
tdf <- mutate(tdf,DayOfWeek=wday(DateTime))
