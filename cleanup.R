if(!file.exists("data")) {
  dir.create("data")
}

if(!file.exists("data/Dataset")) {
  file_Url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  zip <- "data/Dataset.zip"
  download.file(file_Url, destfile = zip)
  unzip(zip, exdir = "data")
}

file <- read.table("data/Dataset/household_power_consumption.txt", sep = ';')
View(file)
