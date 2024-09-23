

### Teste 1 




library(openxlsx)
library("lubridate")

# ------ 

xlsx_file <- loadWorkbook(file = "C:/Users/Nete/Documents/NETE_PROJETOS/AB01-INSTITUCIONAIS/INPE/ADAPTABRASIL/INPUT/FUN_VALORES_DES_INUND_20231213_R06.xlsx")
planilha1 <- read.xlsx(xlsx_file, sheet = "Ind_brutos")
windor <-  read.xlsx(xlsx_file, sheet = "Winsorization")




library(openxlsx)
library("lubridate")
library(moments)
# ------ 

xlsx_file <- loadWorkbook(file = "C:/Users/Nete/Documents/NETE_PROJETOS/AB01-INSTITUCIONAIS/INPE/ADAPTABRASIL/INPUT/FUN_VALORES_DES_INUND_20231213_R06.xlsx")
planilha1 <- read.xlsx(xlsx_file, sheet = "Ind_brutos")
windor <-  read.xlsx(xlsx_file, sheet = "Winsorization")


X1 = as.numeric(planilha1[6:5575,6])
X2 = as.numeric(windor[6:5575,6])

X3= winsorise(X1,skew_thresh = 2.66, kurt_thresh = 3.5 )

boxplot(cbind(X1,X2,X3 = X3$x))







# # two outliers
# x <- c(x, 30, 100)

# # winsorise
# l_win <- winsorise(x, skew_thresh = 2, kurt_thresh = 3.5)

# x <- rnorm(20,20,5)

# # two outliers
# x <- c(x, 30, 100)

# # winsorise
# l_win <- winsorise(x, skew_thresh = 2, kurt_thresh = 3.5)




# ####  
# #### 
#     ### Gerar 

