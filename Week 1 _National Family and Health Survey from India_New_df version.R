library(tidyverse)
library(haven)

nfhs <- read_dta("IAHR52FL.dta")


new_df <- nfhs %>%              
  select(hhid:hv208)
  rename(hv006 = survey_month)
  filter(survey_month == 1) 
  mutate(rural = hv025 == 2)
  
  
  
new_df %>%
  group_by(hv025) %>%
  summarise(
    count = n()
  )
  