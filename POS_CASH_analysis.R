library(tidyr)
library(tidyverse)
library(dplyr)
library(ggplot2)



df = read_csv('POS_CASH_balance.csv')

df$defalut = ifelse(df$SK_DPD_DEF != 0, 1, 0)
df_POS = df %>% select(defalut, SK_ID_CURR) %>% 
  group_by(SK_ID_CURR) %>% 
  summarise(defalut_rate_POS = mean(defalut))
write.table(df_POS, file = "df_POS.csv",
            sep = "\t", row.names = F)


