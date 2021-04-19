library(readr)   #library tools
library("dplyr")
library("stats")
library(xlsx)
install.packages("writexl")
library("writexl")
install.packages("readxl")
install.packages("xlsx")


library("readxl")

my_data <- read_excel("Order Date & Ext ID up to 14 Mar 2021.xlsx")
head(my_data)
my.file <- read_csv("C:/Users/User/Documents/R/File/Raw Data Sales Velo 14 Maret.csv")
my_data <- as.data.frame(my_data)
class(my_data)
View(df.file)
head(df.file)
my_data

data2<-my_data[order(my_data$`External ID`),]
tail(data2)
head(data2)
data2
data2 = subset(data2, select = -c(combine) )
summary(data2)



data2$combine <- paste0(data2$`External ID`, data2$order_date)

my_data <- order(my_data$`External ID`)

cycle_hasil4 <- my_data %>%
  group_by(`External ID`) %>%
  mutate(Purchase_cycle = n_distinct(order_date))

typeof(cycle_hasil4)
cycle_hasil4 <- as.data.frame(cycle_hasil4)
glimpse(cycle_hasil)
summary(cycle_hasil)
head(cycle_hasil3)

write.csv(cycle_hasil3, 'cycle_14_maret2.csv')

write.xlsx(cycle_hasil4, file = "14mar_purchase.xlsx",
           sheetName = "Velo", append = FALSE)

write_xlsx(data2,"cobamar14.xlsx")

#(shift,lag)duplicate,lre,vlookup
