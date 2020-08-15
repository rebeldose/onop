urls1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(urls1,destfile = "./Dataset/aquarium.xlsx")

library(openxlsx)
col <- 7:15
row <- 18:23
dat <- read.xlsx("./Dataset/aquarium.xlsx", sheet=1, 
                 cols = col, rows = row, colNames =TRUE ,rowNames = TRUE)
dat


library(XML)
fileUrl3 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
BalResto <- xmlTreeParse(sub("s", "", fileUrl3), useInternal=TRUE)
rootNode <- xmlRoot(BalResto)

zip <- xpathSApply(rootNode, "//zipcode", xmlValue)
sum(zip == 21231)

fileUrl4 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl4, destfile = "./Dataset/Quiz1-05.csv", method = "curl")

library(data.table)
DT <- fread("./Dataset/Quiz1-05.csv")
DT
