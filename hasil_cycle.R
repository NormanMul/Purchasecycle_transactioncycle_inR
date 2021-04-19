library(readr)
library("dplyr")
library("stats")
library(xlsx)
my.file <- read_csv("C:/Users/User/Documents/R/File/olah_hasil_cycle_28.csv")
df.file <- as.data.frame(my.file)
class(df.file)
head(df.file)


View(df.file)
df.file <- as.data.frame(df.file)

df.file


df.file = subset(df.file, select = -c(X50) )
head(df.file)
nrow(df.file)
ncol(df.file)
dim(df.file)
glimpse(df.file)
install.packages("data.table")
library(data.table)

df.file %>%
  group_by(gabungan) %>%
  mutate(seq= row_number())

View(df.file)
library(data.table)

set(df)[, trx := rowid ]


transaction.cycle <- df.file %>%
  count(`External ID`)

head(transaction.cycle)
transaction.cycle


purchase.cycle <- df.file %>%
  group_by(order_date,Week,`External ID`) %>%
  count(`External ID`)

glimpse(purchase.cycle)


purchase.cycle

write.csv(transaction.cycle, 
write.csv(purchase.cycle, 

plot(purchase.cycle$order_date, purchase.cycle$n)

transaction.cycle
df.file
summary(purchase.cycle)
summary(transaction.cycle)

str(purchase.cycle)
hasil.coba3 <- df.file %>% group_by(`External ID`) %>%
  mutate(purchase = order(`External ID`, decreasing = T ))

head(hasil.coba2)
head(df.file)
class(hasil.coba)
hasil.coba4 <- as.data.frame(hasil.coba4)

hasil.coba4

hasil.coba4 <- hasil.coba3 %>%
  group_by(`External ID`) %>%
  mutate(purchase_cycle = n_distinct(order_date))

glimpse(hasil.coba2)
head(hasil.coba)

#write.csv(hasil.coba2, 
#write.csv(hasil.coba4, '
