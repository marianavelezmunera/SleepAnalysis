# Data set-up
library(readxl)
DB <- read_excel("DB.xls", col_types = c("text","numeric", "text", "text", "text", "text","text", "numeric", "text", "numeric","numeric", "text", "numeric", "text","text", "text", "numeric", "text", "numeric","numeric", "numeric", "numeric", "numeric","numeric", "numeric", "numeric", "date"))
View(DB)
DB_age<-round(DB$age)
DB_age
DB$age<-DB_age

