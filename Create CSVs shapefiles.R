library(rgdal)
library(tidyverse)

#review that all data is loaded, some feature ID's deleted
#can join based on "GEOGRAPHY" Column

CAN_11_CT_AGE <- as.tibble(readOGR("./CT Data/2011", "ct_age_total_joined"))
CAN_11_CT_EDU <- as.tibble(readOGR("./CT Data/2011", "ct_edu_total"))
#CAN_11_CT_IMMI <- as.tibble(readOGR("./CT Data/2011", "ct_immi_total"))
CAN_11_CT_LANG <- as.tibble(readOGR("./CT Data/2011", "ct_lang_total"))
CAN_11_CT_MFH <- as.tibble(readOGR("./CT Data/2011", "ct_mfh_total"))
CAN_11_CT_MOB <- as.tibble(readOGR("./CT Data/2011", "ct_mob_total"))

mylist <- list(CAN_11_CT_AGE = CAN_11_CT_AGE,
               CAN_11_CT_EDU = CAN_11_CT_EDU,
               #CAN_11_CT_IMMI = CAN_11_CT_IMMI,
               CAN_11_CT_LANG = CAN_11_CT_LANG,
               CAN_11_CT_MFH = CAN_11_CT_MFH,
               CAN_11_CT_MOB = CAN_11_CT_MOB)
#export as csv for EDA Stage

for(i in names(mylist)){
  write_excel_csv(mylist[[i]], paste0(i, ".csv"))
}
