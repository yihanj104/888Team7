options(stringsAsFactors = F)

library(tidyverse)

df = read_csv("Documents/BU/capstone/home-credit-default-risk/previous_application.csv")

View(df)

length(unique(df$SK_ID_CURR))

df %>% 
  group_by(SK_ID_CURR) %>%
  summarise(total_amt = sum(AMT_CREDIT,na.rm = T)) -> loan_amount

df %>% 
  filter(NAME_CONTRACT_STATUS=="Approved") %>% 
  group_by(SK_ID_CURR) %>% 
  summarise(avg_approved_amt = mean(AMT_CREDIT)) -> approved_amount


df %>% 
  group_by(SK_ID_CURR) %>% 
  count(NAME_CONTRACT_STATUS) %>% 
  pivot_wider(names_from = NAME_CONTRACT_STATUS, values_from = n) -> df2

df2[is.na(df2)] = 0


df2$sum = rowSums(df2[2:5])  
df2$reject_ratio = df2$Refused/df2$sum

df2$total_amt = loan_amount$total_amt

df3 = left_join(df2,approved_amount)

df3[is.na(df3)] = 0

df3 %>% 
  select(SK_ID_CURR,reject_ratio,avg_approved_amt) -> df3


write_csv(df3, "Documents/BU/capstone/previous_application.csv") 




  