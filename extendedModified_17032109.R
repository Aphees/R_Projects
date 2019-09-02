# This Project is a new implementation of the 
# Extended abstract Project towards a paper 
# publication on it #
#----------------Package Container-------------------------
source("initialPackages.R")
source("readFiles.R")
source("supportFunctions.R")


#--------------------End of Fuctions -------------------------------

#-------------------------------------------------------------------
# Read in individual files to be used for the experiment
  myDir <- "data"
  file_Names <- list.files(myDir)
  file_Names <- file_Names[grep("[.]csv", file_Names)]
  data_Names <- gsub("[.]csv", "", file_Names)
  for(i in 1:length(file_Names))
    { assign(data_Names[i], 
             read.csv(file.path(myDir, 
             file_Names[i]),header = FALSE, 
             stringsAsFactors = FALSE)) 
    }
      
#----------------------- RUNS Begin----------------------------------    

#1. -----------------Authouship---------------------  
  
  aut_data <- authorship  
  aut_dataLast <- as.list(aut_data[,ncol(aut_data)])
  maxNum = round(sqrt(nrow(aut_data)), digits = 0)
  #Assign a name to the data set in the enviroment
  aut_data2 <-  aut_data[,-ncol(aut_data)]
  aut_dataLast <- aut_data[,ncol(aut_data)]
  autCluster <-  list()
  autlistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    autlistNames[[i]] <- paste("authourship", i, sep='')
    autCluster[[i]] <- as.list(kmeans(aut_data2,center =i)$cluster)
    assign(autlistNames[[i]],autCluster[[i]])
  }
  
# Combine the list
  
myList <- c(authourship2,authourship3,authourship4,authourship5,authourship6,
             authourship7,authourship8,authourship9,authourship10,authourship11,
             authourship12,authourship13,authourship14,authourship15,authourship16,
             authourship17,authourship18,authourship19,authourship20,authourship21,
             authourship22,authourship23,authourship24,authourship25,authourship26,
             authourship27,authourship28,authourship29)
autFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                    nrow=length(authourship2), byrow=FALSE)), aut_dataLast)
#autFinal <- autFinal[-1,-1]
#Write final data to file 
  write.csv(autFinal, file = "/home/csstaao/R_Projects/extendedAbstractProject/data_for_Consensus/authourship_1N=29.csv",row.names = FALSE)  
  elbow_method(aut_data2)
  silhouette(aut_data2)
  gapstatistics(aut_data2)
#2.-----------------------------Autompg---------------------  
  autmpg_data <- `auto-mpg`
  autmpg_dataLast <- as.list(autmpg_data[,ncol(autmpg_data)])
  maxNum = round(sqrt(nrow(autmpg_data)), digits = 0)
  #Assign a name to the data set in the enviroment
  autmpg_data2 <-  autmpg_data[,-ncol(autmpg_data)]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("autompg", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(autmpg_data2,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(autompg2,autompg3,autompg4,autompg5,autompg6,autompg7,autompg8,
              autompg9,autompg10,autompg11,autompg12,autompg13,autompg14,autompg15,
              autompg16,autompg17,autompg18,autompg19,autompg20)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(autompg2), 
                                          byrow=FALSE)),autmpg_dataLast)
  
  write.csv(dataFinal, file = "autompg_N=20.csv")  
  
  #3.-----------------------------BankNoteAuthentication---------------------  
  maxNum = 37
  #Assign a name to the data set in the enviroment
  bankNote <- banknote_authentication[,-5]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bankNote", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bankNote,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bankNote2,bankNote3,bankNote4,bankNote5,bankNote6,bankNote7,
              bankNote8,bankNote9,bankNote10,bankNote11,bankNote12,
              bankNote13,bankNote14,bankNote15,bankNote16,bankNote17,
              bankNote18,bankNote19,bankNote20,bankNote21,bankNote22,
              bankNote23,bankNote24,bankNote25,bankNote26,bankNote27,
              bankNote28,bankNote29,bankNote30,bankNote31,bankNote32,
              bankNote33,bankNote34,bankNote35,bankNote36,bankNote37)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(bankNote2), byrow=FALSE))
  
  write.csv(dataFinal, file = "bankNote_N=37.csv") 
  
  
  #4.-----------------------------Boston---------------------  
  maxNum = 22
  #Assign a name to the data set in the enviroment
  boston <- Boston[,-13]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("boston", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(boston,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(boston2,boston3,boston4,boston5,boston6,boston7,
              boston8,boston9,boston10,boston11,boston12,
              boston13,boston14,boston15,boston16,boston17,
              boston18,boston19,boston20,boston21,boston22)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(boston2), byrow=FALSE))
  
  write.csv(dataFinal, file = "boston_N=22.csv")
  
  #5.-----------------------------biodegradation---------------------  
  maxNum = 32
  #Assign a name to the data set in the enviroment
  biodegradation <- biodegredation[,-42]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("biodegradation", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(biodegradation,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(biodegradation2,biodegradation3,biodegradation4,biodegradation5,biodegradation6,biodegradation7,
              biodegradation8,biodegradation9,biodegradation10,biodegradation11,biodegradation12,
              biodegradation13,biodegradation14,biodegradation15,biodegradation16,biodegradation17,
              biodegradation18,biodegradation19,biodegradation20,biodegradation21,biodegradation22,
              biodegradation23,biodegradation24,biodegradation25,biodegradation26,biodegradation27,
              biodegradation28,biodegradation29,biodegradation30,biodegradation31,biodegradation32)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(biodegradation2), byrow=FALSE))
  
  write.csv(dataFinal, file = "biodegradation_N=32.csv")
  
  
  #6.-----------------------------antigua---------------------  
  maxNum = 16
  #Assign a name to the data set in the enviroment
  antigua <- antigua[,-4]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("antigua", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(antigua,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(antigua2,antigua3,antigua4,antigua5,antigua6,antigua7,
              antigua8,antigua9,antigua10,antigua11,antigua12,
              antigua13,antigua14,antigua15,antigua16)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(antigua2), byrow=FALSE))
  
  write.csv(dataFinal, file = "antigua_N=16.csv")
  
  
  #7.-----------------------------bacteria---------------------  
  maxNum = 15
  #Assign a name to the data set in the enviroment
  bacteria <- bacteria[,-6]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bacteria", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bacteria,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bacteria2,bacteria3,bacteria4,bacteria5,bacteria6,bacteria7,
              bacteria8,bacteria9,bacteria10,bacteria11,bacteria12,
              bacteria13,bacteria14,bacteria15)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(bacteria2), byrow=FALSE))
  
  write.csv(dataFinal, file = "bacteria_N=15.csv")
  
  
  
  #8.-----------------------------bladder---------------------  
  maxNum = 18
  #Assign a name to the data set in the enviroment
  bladder <- bladder[,-7]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bladder", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bladder,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bladder2,bladder3,bladder4,bladder5,bladder6,bladder7,
              bladder8,bladder9,bladder10,bladder11,bladder12,
              bladder13,bladder14,bladder15,bladder16,bladder17,bladder18)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(bladder2), byrow=FALSE))
  
  write.csv(dataFinal, file = "bladder_N=18.csv")
  
  #9.-----------------------------bird---------------------  
  maxNum = 20
  #Assign a name to the data set in the enviroment
  bird <- bird[,-12]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bird", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bird,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bird2,bird3,bird4,bird5,bird6,bird7,
              bird8,bird9,bird10,bird11,bird12,
              bird13,bird14,bird15,bird16,bird17,bird18,
              bird19,bird20)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(bird2), byrow=FALSE))
  
  write.csv(dataFinal, file = "bird_N=20.csv")
  
  
  #10.-----------------------------bankruptcy---------------------  
  maxNum = 7
  #Assign a name to the data set in the enviroment
  bankruptcy <- bankruptcy[,-6]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bankruptcy", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bankruptcy,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bankruptcy2,bankruptcy3,bankruptcy4,bankruptcy5,bankruptcy6,bankruptcy7)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(bankruptcy2), byrow=FALSE))
  
  write.csv(dataFinal, file = "bankruptcy_N=7.csv")
  
  
  #11.-----------------------------Diamond---------------------  
  maxNum = 18
  #Assign a name to the data set in the enviroment
  Diamond <- Diamond[,-5]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("Diamond", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(Diamond,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(Diamond2,Diamond3,Diamond4,Diamond5,Diamond6,Diamond7,
              Diamond8,Diamond9,Diamond10,Diamond11,Diamond12,Diamond13,
              Diamond14,Diamond15,Diamond16,Diamond17,Diamond18)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(Diamond2), byrow=FALSE))
  
  write.csv(dataFinal, file = "Diamond_N=18.csv")
  
 #12-----------------------District Wise Rainfall Normal----------------------- 
  maxNum = 25
  #Assign a name to the data set in the enviroment
  dwrNo <- `district wise rainfall normal`[,-18]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("dwrNo", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(dwrNo,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(dwrNo2,dwrNo3,dwrNo4,dwrNo5,dwrNo6,dwrNo7,
              dwrNo8,dwrNo9,dwrNo10,dwrNo11,dwrNo12,dwrNo13,
              dwrNo14,dwrNo15,dwrNo16,dwrNo17,dwrNo18,dwrNo19,
              dwrNo20,dwrNo21,dwrNo22,dwrNo23,dwrNo24,dwrNo25
              )
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(dwrNo2), byrow=FALSE))
  
  write.csv(dataFinal, file = "dwrNo_N=25.csv")
#13---------------------------ecoli---------------------------------------
  
  maxNum = 18
  #Assign a name to the data set in the enviroment
  ecoli <- ecoli[,-8]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ecoli", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ecoli,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ecoli2,ecoli3,ecoli4,ecoli5,ecoli6,ecoli7,
              ecoli8,ecoli9,ecoli10,ecoli11,ecoli12,ecoli13,
              ecoli14,ecoli15,ecoli16,ecoli17,ecoli18)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(ecoli2), byrow=FALSE))
  
  write.csv(dataFinal, file = "ecoli_N=18.csv")
  
  #14-----------------------------EE Marriage District--------------------
  maxNum = 17
  #Assign a name to the data set in the enviroment
  eeMarriageD <-  EE_Marriage_District[,-19]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("eeMarriageD", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(eeMarriageD,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(eeMarriageD2,eeMarriageD3,eeMarriageD4,eeMarriageD5,eeMarriageD6,eeMarriageD7,
              eeMarriageD8,eeMarriageD9,eeMarriageD10,eeMarriageD11,eeMarriageD12,eeMarriageD13,
              eeMarriageD14,eeMarriageD15,eeMarriageD16,eeMarriageD17)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(eeMarriageD2), byrow=FALSE))
  
  write.csv(dataFinal, file = "eeMarriageD_N=17.csv")
  
  #15-----------------------------Depredations--------------------
  maxNum = 21
  #Assign a name to the data set in the enviroment
  Depredations <-  Depredations[,-5]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("Depredations", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(Depredations,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(Depredations2,Depredations3,Depredations4,Depredations5,Depredations6,Depredations7,
              Depredations8,Depredations9,Depredations10,Depredations11,Depredations12,Depredations13,
              Depredations14,Depredations15,Depredations16,Depredations17, Depredations18,Depredations19,
              Depredations20,Depredations21)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(Depredations2), byrow=FALSE))
  
  write.csv(dataFinal, file = "Depredations_N=21.csv")
  
  #16-----------------------------datasetNFishcatch--------------------
  maxNum = 13
  #Assign a name to the data set in the enviroment
  datasetNFishcatch <-  `datasets-numeric-fishcatch`[,-8]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("datasetNFishcatch", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(datasetNFishcatch,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(datasetNFishcatch2,datasetNFishcatch3,datasetNFishcatch4,datasetNFishcatch5,datasetNFishcatch6,datasetNFishcatch7,
              datasetNFishcatch8,datasetNFishcatch9,datasetNFishcatch10,datasetNFishcatch11,datasetNFishcatch12,datasetNFishcatch13
              )
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(datasetNFishcatch2), byrow=FALSE))
  
  write.csv(dataFinal, file = "datasetNFishcatch_N=13.csv")
  
  
  #17-----------------------------datasetNFruitfly--------------------
  maxNum = 11
  #Assign a name to the data set in the enviroment
  datasetNFruitfly <-  `datasets-numeric-fruitfly`[,-5]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("datasetNFruitfly", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(datasetNFruitfly,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(datasetNFruitfly2,datasetNFruitfly3,datasetNFruitfly4,datasetNFruitfly5,datasetNFruitfly6,datasetNFruitfly7,
              datasetNFruitfly8,datasetNFruitfly9,datasetNFruitfly10,datasetNFruitfly11)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(datasetNFruitfly2), byrow=FALSE))
  
  write.csv(dataFinal, file = "datasetNFruitfly_N=11.csv")
  
  
  
  #18-----------------------------dietox--------------------
  maxNum = 29
  #Assign a name to the data set in the enviroment
  dietox <-  dietox[,-7]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("dietox", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(dietox,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(dietox2,dietox3,dietox4,dietox5,dietox6,dietox7,
              dietox8,dietox9,dietox10,dietox11,dietox12,dietox13,
              dietox14,dietox15,dietox16,dietox17,
              dietox18,dietox19,dietox20,dietox21,dietox22,dietox23,
              dietox24,dietox25,dietox26,dietox27,dietox28,dietox29)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(dietox2), byrow=FALSE))
  
  write.csv(dataFinal, file = "dietox_N=29.csv")
  
  
  #19-----------------------------elusage--------------------
  maxNum = 7
  #Assign a name to the data set in the enviroment
  elusage <-  elusage[,-3]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("elusage", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(elusage,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(elusage2,elusage3,elusage4,elusage5,elusage6,elusage7
              )
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(elusage2), byrow=FALSE))
  
  write.csv(dataFinal, file = "elusage_N=7.csv")
  
  
  #20-----------------------------diggleWool--------------------
  maxNum = 18
  #Assign a name to the data set in the enviroment
  diggleWool <-  diggle_Wool[,-8]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("diggleWool", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(diggleWool,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(diggleWool2,diggleWool3,diggleWool4,diggleWool5,diggleWool6,diggleWool7,
              diggleWool8,diggleWool9,diggleWool10,diggleWool11,diggleWool12,diggleWool13,
              diggleWool14,diggleWool15,diggleWool16,diggleWool17,diggleWool18)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(diggleWool2), byrow=FALSE))
  
  write.csv(dataFinal, file = "diggleWool_N=18.csv")
  
  
  #21-----------------------------EmpIUK--------------------
  maxNum = 32
  #Assign a name to the data set in the enviroment
  EmpIUK <-  EmplUK[,-7]
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("EmpIUK", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(EmpIUK,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(EmpIUK2,EmpIUK3,EmpIUK4,EmpIUK5,EmpIUK6,EmpIUK7,
              EmpIUK8,EmpIUK9,EmpIUK10,EmpIUK11,EmpIUK12,EmpIUK13,
              EmpIUK14,EmpIUK15,EmpIUK16,EmpIUK17,EmpIUK18,EmpIUK19,
              EmpIUK20,EmpIUK21,EmpIUK22,EmpIUK23,EmpIUK24,
              EmpIUK25,EmpIUK26,EmpIUK27,EmpIUK28,EmpIUK29,
              EmpIUK30,EmpIUK31,EmpIUK32)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(EmpIUK2), byrow=FALSE))
  
  write.csv(dataFinal, file = "EmpIUK_N=32.csv")
  
  
  
  
  










