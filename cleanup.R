if(!file.exists("data")) {
  dir.create("data")
}

if(!file.exists("data/Dataset")) {
  file_Url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  zip <- "data/Dataset.zip"
  download.file(file_Url, destfile = zip)
  unzip(zip, exdir = "data")
}

HP_data <- read.table("data/household_power_consumption.txt", sep = ';')

colnames(HP_data) <- HP_data[1, ]
HP_data <- HP_data[- 1, ]

HP_data[HP_data == "?"] <- NA
#str(HP_data)

HP_data$Date <- as.Date(HP_data$Date, format = "%d/%m/%Y")
HP_data$Date <- format(HP_data$Date, format = "%Y/%m/%d")
HP_data$Time <- strptime(HP_data$Time, format = "%H:%M:%S")
HP_data$Time <- format(HP_data$Time, format = "%H:%M:%S")
# sapply(HP_data$Date, class)

View(HP_data)

#write.csv(HP_data, "data/HP_data.txt", row.names = FALSE)

SHP_data <- HP_data[HP_data$Date >= "2007/02/01" & HP_data$Date <="2007/02/02", ]
View(SHP_data)
