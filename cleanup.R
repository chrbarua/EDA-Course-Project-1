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

str(HP_data)

HP_data$Time <- strptime(paste(HP_data$Date, HP_data$Time), format = "%d/%m/%Y %H:%M:%S")
HP_data$Date <- as.Date(HP_data$Date, format = "%d/%m/%Y")

str(HP_data)

i <- c(3, 4, 5, 6, 7, 8, 9)

HP_data[ , i] <- apply(HP_data[ , i], 2, function(x) as.numeric(as.character(x)))

str(HP_data)

View(HP_data)

SHP_data <- HP_data[HP_data$Date >= "2007/02/01" & HP_data$Date <="2007/02/02", ]
View(SHP_data)
