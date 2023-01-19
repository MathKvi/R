library(tidyverse)
kidney <- read.csv("C:/Data Scientist/R programmering/Final Assignment/kidney_disease.csv")
class(kidney)

View(kidney)

(sapply(kidney, unique))
kidney$id <- NULL 

plot(kidney$age)
kidney$age[is.na(kidney$age)] <- (mean(kidney$age, na.rm = TRUE))
kidney$age <- as.integer(kidney$age)

mean(kidney$bp[!is.na(kidney$bp)]) 
kidney[76, 2] = 80
kidney[133, 2] = 80
kidney[139, 2] = 80
kidney[162, 2] = 80
kidney[165, 2] = 80

kidney$bp[is.na(kidney$bp)] <- 70

which(is.na(kidney$sg)) 
kidney <- kidney [-c(14,18,22,29,31,38,51,58,60,79,82,83,87,99,100,105,107,110,
                     122,123,126,133,143,149,152,161,163,167,175,189,198,202,203,
                     204,206,209,223,229,232,237,239,246,269,281,296,323,347),]

rownames(kidney) <- 1:353

kidney$al <- as.integer(kidney$al)
kidney$su <- as.integer(kidney$su)

kidney$al[is.na(kidney$al)]

kidney$su[is.na(kidney$su)]

which(is.na(kidney$al))

which(is.na(kidney$su))

kidney <- kidney [-c(74, 113, 115, 165),]
rownames(kidney) <- 1:349 


kidney$pc [kidney$pc == ''] <- NA

kidney$pc <- as.factor(kidney$pc)
kidney$pc <- factor(kidney$pc,levels = c("normal","abnormal","NA"))


kidney$pcc[kidney$pcc == ''] <- NA
kidney$pcc <- as.factor(kidney$pcc) 
kidney$pcc <- factor(kidney$pcc,levels = c("present","notpresent","NA"))


unique(kidney$ba) 
kidney$ba[kidney$ba == ''] <- NA
kidney$ba <- as.factor(kidney$ba)
kidney$ba <- factor(kidney$ba,levels = c("present","notpresent","NA"))

which(is.na(kidney$bgr)) 


which(is.na(kidney$bu))
which(is.na(kidney$sc))
which(is.na(kidney$sod))
which(is.na(kidney$pot))
which(is.na(kidney$hemo))

kidney$rbc[kidney$rbc==''] <- NA
kidney <- kidney [-c(1,2,6,7,11,13,15,16,17,18,21,23,24,27,28,36,37,40,41,42,45,
                     46,47,52,54,56,57,60,61,62,64,67,69,70,71,75,76,81,82,83,84,
                     86,87,89,91,92,93,95,97,99,100,101,102,103,104,105,108,110,
                     112,114,115,116,125,129,134,135,136,138,139,140,142,144,148,
                     151,152,153,154,160,165,166,168,169,170,172,175,177,178,179,
                     180,181,183,184,187,193,194,196,197,199,200,243,261,299,300,
                     331),]
rownames(kidney) <- 1:245 
unique(kidney$rbc) 
kidney$rbc <- as.factor(kidney$rbc)
kidney$rbc <- factor(kidney$rbc,levels=c("normal","abnormal"))

which(is.na(kidney$bu)) 
kidney <- kidney[-c(25,26,32,69,91,97,131,137,163,166,184,225),]
rownames(kidney) <- 1:233

which(is.na(kidney$sc)) 

which(is.na(kidney$sod))
kidney <- kidney[-c(1,3,4,5,13,14,15,16,20,24,36,42,44,45,46,58,59,62,66,70,72,
                    75,93,147,175,199),]
rownames(kidney) <- 1:207 
which(is.na(kidney$pot))

which(is.na(kidney$hemo))
kidney <- kidney[-c(17,19,24,30,38,41,53,65,69,70,74,99,136,140,144,146,175),]
rownames(kidney) <- 1:190

(unique(kidney$pcv)) 
kidney$pcv[kidney$pcv==''] <- NA 
kidney$pcv <- as.integer(kidney$pcv) 
kidney$pcv[is.na(kidney$pcv)] <- (mean(kidney$pcv, na.rm = TRUE)) 
kidney$pcv <- as.integer(kidney$pcv)

unique(kidney$wc)
kidney$wc [is.na(kidney$wc)] 


kidney$wc[is.na(kidney$wc)] <- 8500


kidney$rc <- as.integer(kidney$rc)

kidney$rc [kidney$rc==''] <- NA

kidney$rc[is.na(kidney$rc)] <- 4


kidney$htn <- as.factor(kidney$htn)
kidney$htn [kidney$htn==''] <- NA
kidney$htn <- factor(kidney$htn,levels=c("yes","no","NA"))

kidney$dm <- as.factor(kidney$dm)
kidney$dm [kidney$dm==''] <- NA
kidney$dm <- factor(kidney$dm,levels=c("yes","no","NA"))

kidney$cad <- as.factor(kidney$cad)
kidney$cad [kidney$cad==''] <- NA
kidney$cad <- factor(kidney$cad,levels=c("yes","no","NA"))



kidney$appet <- as.factor(kidney$appet)
kidney$appet [kidney$appet==''] <- NA
kidney$appet <- factor(kidney$appet,levels=c("good","poor","NA"))

kidney$pe <- as.factor(kidney$pe)
kidney$pe [kidney$pe==''] <- NA
kidney$pe <- factor(kidney$pe,levels=c("yes","no","NA"))

kidney$ane <- as.factor(kidney$ane)
kidney$ane [kidney$ane==''] <- NA
kidney$ane <- factor(kidney$ane,levels=c("yes","no","NA"))

kidney$classification <- as.factor(kidney$classification)
kidney$classification <- factor(kidney$classification,levels=c("ckd","notckd"))
