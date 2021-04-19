dt <- mtcars [ ,c(1,2,4,6)]
install.packages("dplyr")

library("dplyr")
library("stats")
dt
data<-dt %>% group_by(cyl) %>%
  mutate(countif=order(cyl, decreasing= T))
data

head(dt)
summary(data)
dt[ , .N , by=cyl]
