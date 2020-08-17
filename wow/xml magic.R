library(httr)
library(XML)
url <- "https://www.coursera.org/learn/data-cleaning/discussions/weeks/2/threads/EOzpx9l5EeWx_BI9PC2FcQ"
r=GET(url)
html <- htmlTreeParse(r, useInternalNodes = TRUE)
xpathSApply(html,"//title",xmlValue)