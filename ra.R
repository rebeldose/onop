

fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl1, destfile = "./Quiz1-01.csv", method = "curl")
quiz1Data <- read.csv("Quiz1-01.csv")
head(quiz1Data)
