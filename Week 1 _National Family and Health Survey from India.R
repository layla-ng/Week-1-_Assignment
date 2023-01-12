library(tidyverse)
library(haven)

nfhs <- read_dta("IAHR52FL.dta")

Alumni <- read.csv("IAHR52FL.dta")

summary(Alumni)

hh <- select(nfhs, hhid:hv208)

january <- filter(nfhs, hv006 == 1)
               
               
nfhs <- rename(nfhs, survey_month = hv006)
               
               
nfhs <- mutate(nfhs, rural = hv025 == 2)
               
filter(survey_month == 1)%>%             

               
nfhs <- mutate(nfhs, rural = hv025 == 2)

               
ggplot(data = nfhs)+
  geom_histogram(mapping = aes(x=hv009), binwidth = 1) +
  xlab("Number of household members")
                                   
            
nfhs %>%
  group_by(rural)


