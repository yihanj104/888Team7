install.packages('tidyverse')

library(tidyverse)
data <- read_csv("Desktop/credit_card_balance.csv")
summary(data)

data1 <- data %>% 
  select("AMT_CREDIT_LIMIT_ACTUAL",
         "AMT_PAYMENT_CURRENT" ) 

sum(is.na(data1))
## 
data$AMT_PAYMENT_CURRENT[is.na(data$AMT_PAYMENT_CURRENT)] <- 0
data$CNT_DRAWINGS_ATM_CURRENT[is.na(data$CNT_DRAWINGS_ATM_CURRENT)] <- 0
data$AMT_INST_MIN_REGULARITY[is.na(data$AMT_INST_MIN_REGULARITY)] <- 0
sum(is.na(data$AMT_RECIVABLE))

##########
data2 <- data %>% 
  group_by(SK_ID_CURR) %>% 
  summarise(day_past_due = sum(SK_DPD),
            day_past_due_t = sum(SK_DPD_DEF),
            credit_limit = mean(AMT_CREDIT_LIMIT_ACTUAL),
            total_balance = mean(AMT_BALANCE),
            total_payment = mean(AMT_PAYMENT_CURRENT),
            total_ATM_drawings = sum(CNT_DRAWINGS_ATM_CURRENT),
            total_receviable = mean(AMT_RECIVABLE),
            mini_install = mean(AMT_INST_MIN_REGULARITY),
            )
           
         

