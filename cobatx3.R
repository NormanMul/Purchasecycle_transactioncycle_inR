library(xlsx)

df <- read.xlsx("C:/Users/User/Downloads/Raw Data Sales Velo 01 Feb new process.xlsx", sheetName = 'sales velo')
help(rep)
baru <- mtcars
head(baru)
glimpse(baru)
baru2 <- mutate(baru, coba = gear - carb)
head(baru)
glimpse(baru)
glimpse(baru2)
help(count)
library(dplyr)
baru2 %>%
  count(coba)
baru3 <- baru2 %>%
  count(coba)
baru3
class(baru3)
baru2
baru3 <- group_by(baru2,cyl)
baru3
baru4 <- summarise(baru3,count(am na.rm = T))
baru4 <- baru3 %>%
  count(coba)
baru4 <- mutate(baru, baru4)
ternyata <- smartbind(baru,baru4)
class(ternyata)
ternyata
View(baru4)
View(ternyata)
baru4
baru3
smartbind(baru3,baru4)
baru3
baru4
baru3 %>% inner_join(baru4, by="coba")
View(baru3)
baru2 %>% full_join(baru4, by="coba")
nrow(mtcars)
baru2
nrow(baru2)
baru5 <- baru2 %>% full_join(baru4, by="coba")
baru5
nrow(baru5)
nrow(baru2)
nrow(baru4)
baru5 <- baru2 %>% left_join(baru4, by="coba")
baru5
baru2
