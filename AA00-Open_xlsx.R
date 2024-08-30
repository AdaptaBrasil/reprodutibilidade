

### Essa rotina é o inicio do tratamento dos dados para o coinR ####

########################################################################### 
# 
#   Autor:  Nete Barreto
#   Data:   20/07/2024
#           30/08/2024
#   Informações Basicas: 
#       Versão do R:
#           "R version 4.3.2 (2023-10-31 ucrt)"
#       Pacotes Instalados: 
#           COINr_1.1.14
#           lubridate_1.9.3  
#           openxlsx_4.2.6.1
#     
###########################################################################
rm(list=ls())

library(openxlsx)
library("lubridate")
library("COINr")


f1<-function(){shell("cls")}

setwd("c:/Users/Nete/Documents/NETE_PROJETOS/AB01-INSTITUCIONAIS/INPE/ADAPTABRASIL/")

f1()
#### Read Table ##### 


iMeta_in <- read.csv("INPUT/IMeta_RH_INDBRT_T1.csv",sep=";",dec=".",header=TRUE,fileEncoding="latin1")

iMeta_adapta <- data.frame(iMeta_in, stringsAsFactors = default.stringsAsFactors())
iMeta_adapta$Parent[29] = NA
check_iMeta(iMeta_adapta)


###### 

iData_adapta <- as.data.frame(read.csv("INPUT/IData_RH_INDBRT.csv",sep=";",dec=",",header=TRUE))

UCode<-paste0(iData_adapta$UF,iData_adapta$Geocódigo)
iData_adapta$uCode = UCode
check_iData(ASEM_iData)
 
#### Teste PADRÃO 

ADAPTA_coin <- new_coin(iData = iData_adapta,
                      iMeta = iMeta_adapta)







