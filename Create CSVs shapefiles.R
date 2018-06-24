library(rgdal)
library(tidyverse)

#review that all data is loaded, some feature ID's deleted
#can join based on "GEOGRAPHY" Column

CAN_06_CT_AGE <- as.tibble(readOGR("./CT_Data/2006", "AgeSex_CT_CAN"))
CAN_06_CT_EDU <- as.tibble(readOGR("./CT_Data/2006", "Labour_Occupation_Education_CT_CAN"))
CAN_06_CT_IMMI <- as.tibble(readOGR("./CT_Data/2006", "Language_Immigration_Citizenship_CT_CAN"))
CAN_06_CT_MFH <- as.tibble(readOGR("./CT_Data/2006", "Marital_Families_Households_CT_CAN"))
CAN_06_CT_ETH <- as.tibble(readOGR("./CT_Data/2006", "Ethnic_Origins_Minorities_CT_CAN"))
CAN_06_CT_FN <- as.tibble(readOGR("./Ct_Data/2006", "Aboriginal_CT_CAN"))
CAN_06_CT_INC <- as.tibble(readOGR("./Ct_Data/2006", "Income_Earnings_CT_CAN"))



glimpse(CAN_06_CT_AGE)

CAN_11_CT_AGE <- as.tibble(readOGR("./CT_Data/2011", "ct_age_total_joined"))
CAN_11_CT_EDU <- as.tibble(readOGR("./CT_Data/2011", "ct_edu_total"))
#CAN_11_CT_IMMI <- as.tibble(readOGR("./CT Data/2011", "ct_immi_total"))
CAN_11_CT_LANG <- as.tibble(readOGR("./CT_Data/2011", "ct_lang_total"))
CAN_11_CT_MFH <- as.tibble(readOGR("./CT_Data/2011", "ct_mfh_total"))
CAN_11_CT_MOB <- as.tibble(readOGR("./CT_Data/2011", "ct_mob_total"))

mylist <- list(CAN_11_CT_AGE = CAN_11_CT_AGE,
               CAN_11_CT_EDU = CAN_11_CT_EDU,
               #CAN_11_CT_IMMI = CAN_11_CT_IMMI,
               CAN_11_CT_LANG = CAN_11_CT_LANG,
               CAN_11_CT_MFH = CAN_11_CT_MFH,
               CAN_11_CT_MOB = CAN_11_CT_MOB)

mylist <- list(CAN_06_CT_AGE = CAN_06_CT_AGE,
               CAN_06_CT_EDU = CAN_06_CT_EDU,
               CAN_06_CT_IMMI = CAN_06_CT_IMMI,
               CAN_06_CT_MFH = CAN_06_CT_MFH,
               CAN_06_CT_ETH = CAN_06_CT_ETH,
               CAN_06_CT_FN = CAN_06_CT_FN,
               CAN_06_CT_INC = CAN_06_CT_INC)


for(i in names(mylist)){
  write_excel_csv(mylist[[i]], paste0(i, ".csv"))
}




