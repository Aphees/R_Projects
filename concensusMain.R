# This Project is a new implementation of the 
# Extended abstract Project towards a paper 
# publication on it #
#----------------Package Container-------------------------
source("sourceFiles/initialPackages.R")
source("sourceFiles/readFiles.R")
source("sourceFiles/supportFunctions.R")
#--------------------End of Containers ---------------------

#-------------------------------------------------------------------
#1. -----------------Authouship---------------------  
  
#Assign a name to the data set   
aut_data <- authorship  
#Get the last column of the data set 
aut_dataLast <- getLastCol(aut_data)
#Calculate the maximum number of iterations
maxNum = calMaxNum(aut_data)
#Remove the last column of the data set 
aut_data <-  removeLastCol(aut_data)
#Initialize the cluster and the cluster names 
autCluster <-  list()
autlistNames <- list()
for (i in 2 : maxNum){
    set.seed(21134)
    autlistNames[[i]] <- paste("authourship", i, sep='')
    autCluster[[i]] <- as.list(kmeans(aut_data,center =i)$cluster)
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
write.csv(autFinal, file = "data_for_Consensus/authourship_N=29.csv",row.names = FALSE)  
  
dteve#2.-----------------------------Autompg--------------------- 
  
  #Assign a name to the data set   
  autmpg_data <- `auto-mpg`  
  #Get the last column of the data set 
  autmpg_dataLast <- getLastCol(autmpg_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(autmpg_data)
  #Remove the last column of the data set 
  autmpg_data <-  removeLastCol(autmpg_data)
  
  #Initialize the cluster and the cluster names 
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("autompg", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(autmpg_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(autompg2,autompg3,autompg4,autompg5,autompg6,autompg7,autompg8,
              autompg9,autompg10,autompg11,autompg12,autompg13,autompg14,autompg15,
              autompg16,autompg17,autompg18,autompg19,autompg20)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                            nrow=length(autompg2),byrow=FALSE)),autmpg_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/autompg_N=20.csv", row.names = FALSE)  
  
  #3.-----------------------------Aids2---------------------  
  
  #Assign a name to the data set   
  Aids_data<-`Aids 2`  
  #Get the last column of the data set 
  Aids_dataLast <- getLastCol(Aids_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(Aids_data)
  #Remove the last column of the data set 
  Aids_data <-  removeLastCol(Aids_data)
  
  #Initialize the cluster and the cluster names 
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("Aids", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(Aids_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(Aids2,Aids3,Aids4,Aids5,Aids6,Aids7,
              Aids8,Aids9,Aids10,Aids11,Aids12,
              Aids13,Aids14,Aids15,Aids16,Aids17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(Aids2),byrow=FALSE)),Aids_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/Aids_N=17.csv", row.names = FALSE) 
  
  
  #4.-----------------------------Boston---------------------  
  #Assign a name to the data set   
  boston_data<-Boston  
  #Get the last column of the data set 
  boston_dataLast <- getLastCol(boston_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(boston_data)
  #Remove the last column of the data set 
  boston_data <-  removeLastCol(boston_data)
  
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("boston", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(boston_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(boston2,boston3,boston4,boston5,boston6,boston7,
              boston8,boston9,boston10,boston11,boston12,
              boston13,boston14,boston15,boston16,boston17,
              boston18,boston19,boston20,boston21,boston22)
  dataFinal <- as.data.frame(matrix(unlist(myList), nrow=length(boston2), byrow=FALSE))
  
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(boston2),byrow=FALSE)),boston_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/boston_N=22.csv", row.names = FALSE)
  
  #5.-----------------------------MachineryHistorical---------------------  
  #Assign a name to the data set   
  MacHis_data<-`35111314-Orders Received for Machinery -- Historical Data(3) v1`  
  #Get the last column of the data set 
  MacHis_dataLast <- getLastCol(MacHis_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(MacHis_data)
  #Remove the last column of the data set 
  MacHis_data <-  removeLastCol(MacHis_data)
  
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("machinery", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(MacHis_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(machinery2,machinery3,machinery4,machinery5,machinery6,machinery7,
              machinery8,machinery9,machinery10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(machinery2),byrow=FALSE)),
                     MacHis_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/MachineryHistorical_N=10.csv", row.names = FALSE)
  
  
  #6.-----------------------------bankruptcy---------------------  
  #Assign a name to the data set   
  bankruptcy_data<-`35111314-Orders Received for Machinery -- Historical Data(3) v1`  
  #Get the last column of the data set 
  bankruptcy_dataLast <- getLastCol(bankruptcy_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bankruptcy_data)
  #Remove the last column of the data set 
  bankruptcy_data <-  removeLastCol(bankruptcy_data)
  
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bankruptcy", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bankruptcy_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bankruptcy2,bankruptcy3,bankruptcy4,bankruptcy5,bankruptcy6,bankruptcy7,
              bankruptcy8,bankruptcy9,bankruptcy10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bankruptcy2),byrow=FALSE)),
                     bankruptcy_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bankruptcy_N=10.csv", row.names = FALSE)
  
  
  
  #7.-----------------------------bbHousehold---------------------  
  #Assign a name to the data set   
  bbhouse_data<-BB_Household_Characteristics_District  
  #Get the last column of the data set 
  bbhouse_dataLast <- getLastCol(bbhouse_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bbhouse_data)
  #Remove the last column of the data set 
  bbhouse_data <-  removeLastCol(bbhouse_data)
  
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bbhouse", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bbhouse_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bbhouse2,bbhouse3,bbhouse4,bbhouse5,bbhouse6,bbhouse7,
              bbhouse8,bbhouse9,bbhouse10,bbhouse11,bbhouse12,
              bbhouse13,bbhouse14,bbhouse15,bbhouse16,bbhouse17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bbhouse2),byrow=FALSE)),
                     bbhouse_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bb_Household_Characteristics_N=17.csv", row.names = FALSE)
  
  
  #8.-----------------------------bladder---------------------  
  #Assign a name to the data set   
  bladder_data<- bladder
  #Get the last column of the data set 
  bladder_dataLast <- getLastCol(bladder_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bladder_data)
  #Remove the last column of the data set 
  bladder_data <-  removeLastCol(bladder_data)
  
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bladder", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bladder_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bladder2,bladder3,bladder4,bladder5,bladder6,bladder7,
              bladder8,bladder9,bladder10,bladder11,bladder12,
              bladder13,bladder14,bladder15,bladder16,bladder17,bladder18)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bladder2),byrow=FALSE)),
                     bladder_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bladder=18.csv", row.names = FALSE)
  
  #9.-----------------------------bird---------------------  
  #Assign a name to the data set   
  bird_data<- bird
  #Get the last column of the data set 
  bird_dataLast <- getLastCol(bird_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bird_data)
  #Remove the last column of the data set 
  bird_data <-  removeLastCol(bird_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bird", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bird_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bird2,bird3,bird4,bird5,bird6,bird7,
              bird8,bird9,bird10,bird11,bird12,
              bird13,bird14,bird15,bird16,bird17,bird18,
              bird19,bird20)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bird2),byrow=FALSE)),
                     bird_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bird=20.csv", row.names = FALSE)
  
  
  
  #10.-----------------------------beveridge---------------------  
  #Assign a name to the data set   
  beveridge_data<- beveridge
  #Get the last column of the data set 
  beveridge_dataLast <- getLastCol(beveridge_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(beveridge_data)
  #Remove the last column of the data set 
  beveridge_data <-  removeLastCol(beveridge_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("beveridge", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(beveridge_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(beveridge2,beveridge3,beveridge4,beveridge5,beveridge6,beveridge7,
              beveridge8,beveridge9,beveridge10,beveridge11,beveridge12)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(beveridge2),byrow=FALSE)),
                     beveridge_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/beveridgeN=20.csv", row.names = FALSE)
  
  
  
 #11-----------------------District Wise Rainfall Normal----------------------- 
  #Assign a name to the data set   
  districtWise_data<- `district wise rainfall normal`
  #Get the last column of the data set 
  districtWise_dataLast <- getLastCol(districtWise_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(districtWise_data)
  #Remove the last column of the data set 
  districtWise_data <-  removeLastCol(districtWise_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("districtWise", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(districtWise_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(districtWise2,districtWise3,districtWise4,districtWise5,districtWise6,districtWise7,
              districtWise8,districtWise9,districtWise10,districtWise11,districtWise12,districtWise13,
              districtWise14,districtWise15,districtWise16,districtWise17,districtWise18,districtWise19,
              districtWise20,districtWise21,districtWise22,districtWise23,districtWise24,districtWise25
              )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(districtWise2),byrow=FALSE)),
                     districtWise_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/DistrictWiseRainfallN=25.csv", row.names = FALSE)
  
  
#12---------------------------ecoli---------------------------------------
  
  #Assign a name to the data set   
  ecoli_data<- ecoli
  #Get the last column of the data set 
  ecoli_dataLast <- getLastCol(ecoli_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ecoli_data)
  #Remove the last column of the data set 
  ecoli_data <-  removeLastCol(ecoli_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ecoli", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ecoli_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ecoli2,ecoli3,ecoli4,ecoli5,ecoli6,ecoli7,
              ecoli8,ecoli9,ecoli10,ecoli11,ecoli12,ecoli13,
              ecoli14,ecoli15,ecoli16,ecoli17,ecoli18)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ecoli2),byrow=FALSE)),
                     ecoli_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ecoliN=18.csv", row.names = FALSE)
  
  #13-----------------------------EE Marriage District--------------------
  #Assign a name to the data set   
  eemarriage_data<- EE_Marriage_District
  #Get the last column of the data set 
  eemarriage_dataLast <- getLastCol(eemarriage_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(eemarriage_data)
  #Remove the last column of the data set 
  eemarriage_data <-  removeLastCol(eemarriage_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("eeMarriageD", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(eemarriage_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(eeMarriageD2,eeMarriageD3,eeMarriageD4,eeMarriageD5,eeMarriageD6,eeMarriageD7,
              eeMarriageD8,eeMarriageD9,eeMarriageD10,eeMarriageD11,eeMarriageD12,eeMarriageD13,
              eeMarriageD14,eeMarriageD15,eeMarriageD16,eeMarriageD17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(eeMarriageD2),byrow=FALSE)),
                     eemarriage_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/eeMarriageDistrict_N=17.csv", row.names = FALSE)
  
  #14-----------------------------Depredations--------------------
  #Assign a name to the data set   
  depredations_data<- Depredations
  #Get the last column of the data set 
  depredations_dataLast <- getLastCol(depredations_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(depredations_data)
  #Remove the last column of the data set 
  depredations_data <-  removeLastCol(depredations_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("Depredations", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(depredations_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(Depredations2,Depredations3,Depredations4,Depredations5,Depredations6,Depredations7,
              Depredations8,Depredations9,Depredations10,Depredations11,Depredations12,Depredations13,
              Depredations14,Depredations15,Depredations16,Depredations17, Depredations18,Depredations19,
              Depredations20,Depredations21)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(Depredations2),byrow=FALSE)),
                     depredations_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/Depradations=21.csv", row.names = FALSE)
  
  #15-----------------------------datasetNFishcatch--------------------
  #Assign a name to the data set   
  fishcatch_data<- `datasets-numeric-fishcatch`
  #Get the last column of the data set 
  fishcatch_dataLast <- getLastCol(fishcatch_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(fishcatch_data)
  #Remove the last column of the data set 
  fishcatch_data <-  removeLastCol(fishcatch_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("fishcatch", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(fishcatch_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(fishcatch2,fishcatch3,fishcatch4,fishcatch5,fishcatch6,fishcatch7,
              fishcatch8,fishcatch9,fishcatch10,fishcatch11,fishcatch12,fishcatch13
              )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(fishcatch2),byrow=FALSE)),
                     fishcatch_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/FishCatch=13.csv", row.names = FALSE)
  
  
  #16-----------------------------caterpillar--------------------
  #Assign a name to the data set   
  caterpillar_data<- Caterpillars
  #Get the last column of the data set 
  caterpillar_dataLast <- getLastCol(caterpillar_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(caterpillar_data)
  #Remove the last column of the data set 
  caterpillar_data <-  removeLastCol(caterpillar_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("caterpillar", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(caterpillar_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(caterpillar2,caterpillar3,caterpillar4,caterpillar5,caterpillar6,caterpillar7,
              caterpillar8,caterpillar9,caterpillar10,caterpillar11,
              caterpillar12,caterpillar13,caterpillar14,caterpillar15,
              caterpillar16)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(caterpillar2),byrow=FALSE)),
                     caterpillar_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/caterpillarN=16.csv", row.names = FALSE)
  
  
  
  #17-----------------------------dietox--------------------
  #Assign a name to the data set   
  dietox_data<- dietox
  #View(dietox)
  #Get the last column of the data set 
  dietox_dataLast <- getLastCol(dietox_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(dietox_data)
  #Remove the last column of the data set 
  dietox_data <-  removeLastCol(dietox_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("dietox", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(dietox_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(dietox2,dietox3,dietox4,dietox5,dietox6,dietox7,
              dietox8,dietox9,dietox10,dietox11,dietox12,dietox13,
              dietox14,dietox15,dietox16,dietox17,
              dietox18,dietox19,dietox20,dietox21,dietox22,dietox23,
              dietox24,dietox25,dietox26,dietox27,dietox28,dietox29)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(dietox2),byrow=FALSE)),
                     dietox_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/dietoxN2=29.csv", row.names = FALSE)
  
  
  
  #18-----------------------------enrollment--------------------
  #Assign a name to the data set   
  enrollment_data<- enrollment
  #Get the last column of the data set 
  enrollment_dataLast <- getLastCol(enrollment_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(enrollment_data)
  #Remove the last column of the data set 
  enrollment_data <-  removeLastCol(enrollment_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("enrollment", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(enrollment_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(enrollment2,enrollment3,enrollment4,enrollment5,enrollment6,enrollment7
              )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(enrollment2),byrow=FALSE)),
                     enrollment_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/enrollmentN=7.csv", row.names = FALSE)
  
  
  #19-----------------------------diggleWool--------------------
  #Assign a name to the data set   
  diggleWool_data<- diggle_Wool
  #Get the last column of the data set 
  diggleWool_dataLast <- getLastCol(diggleWool_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(diggleWool_data)
  #Remove the last column of the data set 
  diggleWool_data <-  removeLastCol(diggleWool_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("diggleWool", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(diggleWool_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(diggleWool2,diggleWool3,diggleWool4,diggleWool5,diggleWool6,diggleWool7,
              diggleWool8,diggleWool9,diggleWool10,diggleWool11,diggleWool12,diggleWool13,
              diggleWool14,diggleWool15,diggleWool16,diggleWool17,diggleWool18)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(diggleWool2),byrow=FALSE)),
                     diggleWool_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/diggleWoolN=18.csv", row.names = FALSE)
  
  #20-----------------------------cbfTest--------------------
  #Assign a name to the data set   
  cbfTest_data<- CBF_TEST
  #Get the last column of the data set 
  cbfTest_dataLast <- getLastCol(cbfTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(cbfTest_data)
  #Remove the last column of the data set 
  cbfTest_data <-  removeLastCol(cbfTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("cbfTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(cbfTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(cbfTest2,cbfTest3,cbfTest4,cbfTest5,cbfTest6,cbfTest7,
              cbfTest8,cbfTest9,cbfTest10,cbfTest11,cbfTest12,cbfTest13,
              cbfTest14,cbfTest15,cbfTest16,cbfTest17,cbfTest18,cbfTest19,
              cbfTest20,cbfTest21,cbfTest22,cbfTest23,cbfTest24,cbfTest25,
              cbfTest26,cbfTest27,cbfTest28,cbfTest29,cbfTest30)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(cbfTest2),byrow=FALSE)),
                     cbfTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/cbfTestN=30.csv", row.names = FALSE)
  
  #21-----------------------------epilepsy--------------------
  #Assign a name to the data set   
  epilepsy_data<- epilepsy
  #Get the last column of the data set 
  epilepsy_dataLast <- getLastCol(epilepsy_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(epilepsy_data)
  #Remove the last column of the data set 
  epilepsy_data <-  removeLastCol(epilepsy_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("epilepsy", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(epilepsy_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(epilepsy2,epilepsy3,epilepsy4,epilepsy5,epilepsy6,epilepsy7,
              epilepsy8,epilepsy9,epilepsy10,epilepsy11,epilepsy12,epilepsy13,
              epilepsy14,epilepsy15)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(epilepsy2),byrow=FALSE)),
                     epilepsy_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/epilepsy_N=15.csv", row.names = FALSE)
  
  
  #22-----------------------------epilepsy--------------------
  #Assign a name to the data set   
  epilepsy_data<- epilepsy
  #Get the last column of the data set 
  epilepsy_dataLast <- getLastCol(epilepsy_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(epilepsy_data)
  #Remove the last column of the data set 
  epilepsy_data <-  removeLastCol(epilepsy_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("epilepsy", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(epilepsy_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(epilepsy2,epilepsy3,epilepsy4,epilepsy5,epilepsy6,epilepsy7,
              epilepsy8,epilepsy9,epilepsy10,epilepsy11,epilepsy12,epilepsy13,
              epilepsy14,epilepsy15)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(epilepsy2),byrow=FALSE)),
                     epilepsy_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/epilepsy_N=15.csv", row.names = FALSE)
  
  
  #23-----------------------------ethereum--------------------
  #Assign a name to the data set   
  ethereum_data<- ethereum_price
  #Get the last column of the data set 
  ethereum_dataLast <- getLastCol(ethereum_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ethereum_data)
  #Remove the last column of the data set 
  ethereum_data <-  removeLastCol(ethereum_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ethereum", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ethereum_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ethereum2,ethereum3,ethereum4,ethereum5,ethereum6,ethereum7,
              ethereum8,ethereum9,ethereum10,ethereum11,ethereum12,ethereum13,
              ethereum14,ethereum15,ethereum16,ethereum17,ethereum18,ethereum19,
              ethereum20,ethereum21,ethereum22,ethereum23, ethereum24,ethereum25,
              ethereum26,ethereum27,ethereum28, ethereum29)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ethereum2),byrow=FALSE)),
                     ethereum_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ethereum_N=29.csv", row.names = FALSE)
  
  
  #24-----------------------------fg1--------------------
  #Assign a name to the data set   
  fgl_data<- fgl
  #Get the last column of the data set 
  fgl_dataLast <- getLastCol(fgl_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(fgl_data)
  #Remove the last column of the data set 
  fgl_data <-  removeLastCol(fgl_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("fgl", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(fgl_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(fgl2,fgl3,fgl4,fgl5,fgl6,fgl7,
              fgl8,fgl9,fgl10,fgl11,fgl12,fgl13,
              fgl14,fgl15)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(fgl2),byrow=FALSE)),
                     fgl_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/fgl2_N=15.csv", row.names = FALSE)
  
  
  #25-----------------------------bitcoin--------------------
  #Assign a name to the data set   
  bitcoin_data<- bitcoin_data
  View(bitcoin_data)
  #Get the last column of the data set 
  bitcoin_dataLast <- getLastCol(bitcoin_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bitcoin_data)
  #Remove the last column of the data set 
  bitcoin_data <-  removeLastCol(bitcoin_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bitcoin", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bitcoin_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bitcoin2,bitcoin3,bitcoin4,bitcoin5,bitcoin6,bitcoin7,
              bitcoin8,bitcoin9,bitcoin10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bitcoin2),byrow=FALSE)),
                     bitcoin_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bitcoin_N=10.csv", row.names = FALSE)
  
  
  
  #26-----------------------------bitcoincash--------------------
  #Assign a name to the data set   
  bitcoincash_data<- bitcoin_cash_price 
  #Get the last column of the data set 
  bitcoincash_dataLast <- getLastCol(bitcoincash_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bitcoincash_data)
  #Remove the last column of the data set 
  bitcoincash_data <-  removeLastCol(bitcoincash_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bitcoincash", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bitcoincash_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bitcoincash2,bitcoincash3,bitcoincash4,bitcoincash5,bitcoincash6,bitcoincash7,
              bitcoincash8,bitcoincash9,bitcoincash10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bitcoincash2),byrow=FALSE)),
                     bitcoincash_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bitcoincash_N=10.csv", row.names = FALSE)

  #27-----------------------------gesturePhase--------------------
  #Assign a name to the data set   
  gesturePhase_data<- `Gesture Phase Segmentation A2_Raw_Clean `
  #Get the last column of the data set 
  gesturePhase_dataLast <- getLastCol(gesturePhase_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(gesturePhase_data)
  #Remove the last column of the data set 
  gesturePhase_data <-  removeLastCol(gesturePhase_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("gesturePhase", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(gesturePhase_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(gesturePhase2,gesturePhase3,gesturePhase4,gesturePhase5,gesturePhase6,
              gesturePhase7,gesturePhase8,gesturePhase9,gesturePhase10,gesturePhase11,
              gesturePhase12,gesturePhase13,gesturePhase14,gesturePhase15,gesturePhase16,
              gesturePhase17,gesturePhase18,gesturePhase19,gesturePhase20,gesturePhase21,
              gesturePhase22,gesturePhase23,gesturePhase24,gesturePhase25,gesturePhase26,
              gesturePhase27,gesturePhase28,gesturePhase29,gesturePhase30,gesturePhase31,
              gesturePhase32,gesturePhase33,gesturePhase34,gesturePhase35,gesturePhase36)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(gesturePhase2),byrow=FALSE)),
                     gesturePhase_dataLast)
  
  
  #28-----------------------------GlassIdentification--------------------
  #Assign a name to the data set   
  glassID_data<- `Glass  Identification`
  #Get the last column of the data set 
  glassID_dataLast <- getLastCol(glassID_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(glassID_data)
  #Remove the last column of the data set 
  glassID_data <-  removeLastCol(glassID_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("glassID", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(glassID_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(glassID2,glassID3,glassID4,glassID5,glassID6,
              glassID7,glassID8,glassID9,glassID10,glassID11,
              glassID12,glassID13,glassID14,glassID15)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(glassID2),byrow=FALSE)),
                     glassID_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/glassID_N=15.csv", row.names = FALSE)
  #Check the number of cluster generated by: Gap,Elbow and Silhouette
  elbow_method(glassID_data)
  silhouette(glassID_data)
  gapstatistics(glassID_data)
  
  #29-----------------------------GGWorkStatus--------------------
  #Assign a name to the data set   
  ggWorkStatus_data<- GG_Work_Status_District
  #Get the last column of the data set 
  ggWorkStatus_dataLast <- getLastCol(ggWorkStatus_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ggWorkStatus_data)
  #Remove the last column of the data set 
  ggWorkStatus_data <-  removeLastCol(ggWorkStatus_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ggWorkStatus", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ggWorkStatus_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ggWorkStatus2,ggWorkStatus3,ggWorkStatus4,ggWorkStatus5,ggWorkStatus6,
              ggWorkStatus7,ggWorkStatus8,ggWorkStatus9,ggWorkStatus10,ggWorkStatus11,
              ggWorkStatus12,ggWorkStatus13,ggWorkStatus14,ggWorkStatus15,ggWorkStatus16,ggWorkStatus17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ggWorkStatus2),byrow=FALSE)),
                     ggWorkStatus_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ggWorkStatus_N=17.csv", row.names = FALSE)
  #Check the number of cluster generated by: Gap,Elbow and Silhouette
  elbow_method(ggWorkStatus_data)
  silhouette(ggWorkStatus_data)
  gapstatistics(ggWorkStatus_data)
  
  #30-----------------------------grouseticks--------------------
  #Assign a name to the data set   
  grouseticks_data<- grouseticks
  #Get the last column of the data set 
  grouseticks_dataLast <- getLastCol(grouseticks_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(grouseticks_data)
  #Remove the last column of the data set 
  grouseticks_data <-  removeLastCol(grouseticks_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("grouseticks", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(grouseticks_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(grouseticks2,grouseticks3,grouseticks4,grouseticks5,grouseticks6,
              grouseticks7,grouseticks8,grouseticks9,grouseticks10,grouseticks11,
              grouseticks12,grouseticks13,grouseticks14,grouseticks15,grouseticks16,grouseticks17,
              grouseticks18,grouseticks19,grouseticks20)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(grouseticks2),byrow=FALSE)),
                     grouseticks_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/grouseticks_N=20.csv", row.names = FALSE)
  #Check the number of cluster generated by: Gap,Elbow and Silhouette
  elbow_method(grouseticks_data)
  silhouette(grouseticks_data)
  gapstatistics(grouseticks_data)
  
  
  #31-----------------------------breastTissue--------------------
  #Assign a name to the data set   
  breastTissue_data<- `BreastTissue2_Clean `
  #Get the last column of the data set 
  breastTissue_dataLast <- getLastCol(breastTissue_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(breastTissue_data)
  #Remove the last column of the data set 
  breastTissue_data <-  removeLastCol(breastTissue_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("breastTissue", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(breastTissue_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(breastTissue2,breastTissue3,breastTissue4,breastTissue5,breastTissue6,
              breastTissue7,breastTissue8,breastTissue9,breastTissue10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(breastTissue2),byrow=FALSE)),
                     breastTissue_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/breastTissue_N=10.csv", row.names = FALSE)
  
  
  #31-----------------------------eZanders--------------------
  #Assign a name to the data set   
  ezanders_data<- ezanders
  #Get the last column of the data set 
  ezanders_dataLast <- getLastCol(ezanders_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ezanders_data)
  #Remove the last column of the data set 
  ezanders_data <-  removeLastCol(ezanders_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ezanders", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ezanders_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ezanders2,ezanders3,ezanders4,ezanders5,ezanders6,
              ezanders7,ezanders8,ezanders9,ezanders10)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ezanders2),byrow=FALSE)),
                     ezanders_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ezanders_N=10.csv", row.names = FALSE)
  
  
  #32-----------------------------grunfeld--------------------
  #Assign a name to the data set   
  grunfeld_data<- Grunfeld
  #Get the last column of the data set 
  grunfeld_dataLast <- getLastCol(grunfeld_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(grunfeld_data)
  #Remove the last column of the data set 
  grunfeld_data <-  removeLastCol(grunfeld_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("grunfeld", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(grunfeld_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(grunfeld2,grunfeld3,grunfeld4,grunfeld5,grunfeld6,
              grunfeld7,grunfeld8,grunfeld9,grunfeld10,
              grunfeld11,grunfeld12,grunfeld13,grunfeld14)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(grunfeld2),byrow=FALSE)),
                     grunfeld_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/grunfeld_N=14.csv", row.names = FALSE)
  
  
  #33-----------------------------housing--------------------
  #Assign a name to the data set   
  housing_data<- housing
  #Get the last column of the data set 
  housing_dataLast <- getLastCol(housing_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(housing_data)
  #Remove the last column of the data set 
  housing_data <-  removeLastCol(housing_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("housing", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(housing_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(housing2,housing3,housing4,housing5,housing6,
              housing7,housing8,housing9,housing10,
              housing11,housing12,housing13,housing14,
              housing15,housing16,housing17,housing18,
              housing19,housing20,housing21,housing22)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(housing2),byrow=FALSE)),
                     housing_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/housing_N=22.csv", row.names = FALSE)
  
  
  #34-----------------------------homerun--------------------
  #Assign a name to the data set   
  homerun_data<- `homerun (2)`
  #Get the last column of the data set 
  homerun_dataLast <- getLastCol(homerun_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(homerun_data)
  #Remove the last column of the data set 
  homerun_data <-  removeLastCol(homerun_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("homerun", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(homerun_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(homerun2,homerun3,homerun4,homerun5,homerun6,
              homerun7,homerun8,homerun9,homerun10,
              homerun11,homerun12,homerun13)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(homerun2),byrow=FALSE)),
                     homerun_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/homerun_N=13.csv", row.names = FALSE)
  
  
  #35-----------------------------echomonths--------------------
  #Assign a name to the data set   
  echomonths_data<- echomonths
  #Get the last column of the data set 
  echomonths_dataLast <- getLastCol(echomonths_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(echomonths_data)
  #Remove the last column of the data set 
  echomonths_data <-  removeLastCol(echomonths_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("echomonths", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(echomonths_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(echomonths2,echomonths3,echomonths4,echomonths5,echomonths6,
              echomonths7,echomonths8,echomonths9,echomonths10,
              echomonths11)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(echomonths2),byrow=FALSE)),
                     echomonths_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/echomonths_N=11.csv", row.names = FALSE)
  
  
  
  #36-----------------------------flightresponse--------------------
  #Assign a name to the data set   
  flightresponse_data<- FlightResponse
  #Get the last column of the data set 
  flightresponse_dataLast <- getLastCol(flightresponse_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(flightresponse_data)
  #Remove the last column of the data set 
  flightresponse_data <-  removeLastCol(flightresponse_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("flightresponse", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(flightresponse_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(flightresponse2,flightresponse3,flightresponse4,flightresponse5,flightresponse6,
              flightresponse7,flightresponse8,flightresponse9,flightresponse10,
              flightresponse11, flightresponse12,flightresponse13,flightresponse14,
              flightresponse15,flightresponse16,
              flightresponse17,flightresponse18,flightresponse19,flightresponse20,
              flightresponse21,flightresponse22)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(flightresponse2),byrow=FALSE)),
                     flightresponse_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/flightresponse_N=22.csv", row.names = FALSE)
  

  
  
  #37-----------------------------free1--------------------
  #Assign a name to the data set   
  free1_data<- free1
  #Get the last column of the data set 
  free1_dataLast <- getLastCol(free1_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(free1_data)
  #Remove the last column of the data set 
  free1_data <-  removeLastCol(free1_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("free1", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(free1_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(free12,free13,free14,free15,free16,
              free17,free18,free19,free110,
              free111, free112,free113,free114,
              free115,free116,
              free117,free118,free119,free120,
              free121)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(free12),byrow=FALSE)),
                     free1_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/free1_N=21.csv", row.names = FALSE)
  
  
  #37-----------------------------free2--------------------
  #Assign a name to the data set   
  free2_data<- free2
  #Get the last column of the data set 
  free2_dataLast <- getLastCol(free2_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(free2_data)
  #Remove the last column of the data set 
  free2_data <-  removeLastCol(free2_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("free2", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(free1_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(free22,free23,free24,free25,free26,
              free27,free28,free29,free210,
              free211, free212,free213,free214,
              free215,free216,
              free217,free218,free219,free220,
              free221)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(free22),byrow=FALSE)),
                     free1_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/free2_N=21.csv", row.names = FALSE)
  
  
  #38-----------------------------imagesegmentation--------------------
  #Assign a name to the data set   
  imagesegmentation_data<- image_segmentation
  #Get the last column of the data set 
  imagesegmentation_dataLast <- getLastCol(imagesegmentation_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(imagesegmentation_data)
  #Remove the last column of the data set 
  imagesegmentation_data <-  removeLastCol(imagesegmentation_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("imagesegmentation", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(imagesegmentation_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(imagesegmentation2,imagesegmentation3,imagesegmentation4,imagesegmentation5,imagesegmentation6,
              imagesegmentation7,imagesegmentation8,imagesegmentation9,imagesegmentation10,
              imagesegmentation11, imagesegmentation12,imagesegmentation13,imagesegmentation14
            )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(imagesegmentation2),byrow=FALSE)),
                     imagesegmentation_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/imagesegmentation_N=14.csv", row.names = FALSE)
  
  
  
  #39-----------------------------metabolicrate--------------------
  #Assign a name to the data set   
  metabolicrate_data<- MetabolicRate
  #Get the last column of the data set 
  metabolicrate_dataLast <- getLastCol(metabolicrate_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(metabolicrate_data)
  #Remove the last column of the data set 
  metabolicrate_data <-  removeLastCol(metabolicrate_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("metabolicrate", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(metabolicrate_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(metabolicrate2,metabolicrate3,metabolicrate4,metabolicrate5,metabolicrate6,
              metabolicrate7,metabolicrate8,metabolicrate9,metabolicrate10,
              metabolicrate11, metabolicrate12,metabolicrate13,metabolicrate14,
              metabolicrate15,metabolicrate16,metabolicrate17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(metabolicrate2),byrow=FALSE)),
                     metabolicrate_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/metabolicrate_N=17.csv", row.names = FALSE)
  
  
  #40-----------------------------macro--------------------
  #Assign a name to the data set   
  macro_data<- macro
  #Get the last column of the data set 
  macro_dataLast <- getLastCol(macro_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(macro_data)
  #Remove the last column of the data set 
  macro_data <-  removeLastCol(macro_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("macro", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(macro_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(macro2,macro3,macro4,macro5,macro6,
              macro7,macro8,macro9,macro10,
              macro11, macro12,macro13,macro14,
              macro15,macro16,macro17,
              macro18,macro19)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(macro2),byrow=FALSE)),
                     macro_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/macro_N=19.csv", row.names = FALSE)
  
  
  
  #41-----------------------------manager--------------------
  #Assign a name to the data set   
  manager_data<- Manager
  #Get the last column of the data set 
  manager_dataLast <- getLastCol(manager_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(manager_data)
  #Remove the last column of the data set 
  manager_data <-  removeLastCol(manager_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("manager", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(manager_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(manager2,manager3,manager4,manager5,manager6,
              manager7,manager8,manager9,manager10,
              manager11, manager12)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(manager2),byrow=FALSE)),
                     manager_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/manager_N=12.csv", row.names = FALSE)
  
  
  
  #42-----------------------------kddelnino--------------------
  #Assign a name to the data set   
  kddelnino_data<- `kdd_el_nino-small`
  #Get the last column of the data set 
  kddelnino_dataLast <- getLastCol(kddelnino_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(kddelnino_data)
  #Remove the last column of the data set 
  kddelnino_data <-  removeLastCol(kddelnino_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("kddelnino", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(kddelnino_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(kddelnino2,kddelnino3,kddelnino4,kddelnino5,kddelnino6,
              kddelnino7,kddelnino8,kddelnino9,kddelnino10,
              kddelnino11, kddelnino12,kddelnino13,kddelnino14,kddelnino15,kddelnino16,
              kddelnino17,kddelnino18,kddelnino19,kddelnino20,kddelnino21,
              kddelnino22, kddelnino23,kddelnino2,kddelnino24,kddelnino25,kddelnino26,
              kddelnino27,kddelnino28)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(kddelnino2),byrow=FALSE)),
                     kddelnino_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/kddelnino_N=28.csv", row.names = FALSE)
  
  #43-----------------------------leafshape--------------------
  #Assign a name to the data set   
  leafshape_data<- leafshape
  #Get the last column of the data set 
  leafshape_dataLast <- getLastCol(leafshape_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(leafshape_data)
  #Remove the last column of the data set 
  leafshape_data <-  removeLastCol(leafshape_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("leafshape", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(leafshape_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(leafshape2,leafshape3,leafshape4,leafshape5,leafshape6,
              leafshape7,leafshape8,leafshape9,leafshape10,
              leafshape11, leafshape12,leafshape13,leafshape14,leafshape15,leafshape16,
              leafshape17)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(leafshape2),byrow=FALSE)),
                     leafshape_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/leafshape_N=17.csv", row.names = FALSE)
  
  
  
  
  #44-----------------------------globsces--------------------
  #Assign a name to the data set   
  globsces_data<- GLOBCSES.Final20170714
  #Get the last column of the data set 
  globsces_dataLast <- getLastCol(globsces_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(globsces_data)
  #Remove the last column of the data set 
  globsces_data <-  removeLastCol(globsces_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("globsces", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(globsces_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(globsces2,globsces3,globsces4,globsces5,globsces6,
              globsces7,globsces8,globsces9,globsces10,
              globsces11, globsces12,globsces13,globsces14,globsces15,globsces16,
              globsces17,globsces18,globsces19,globsces20,globsces21,
              globsces22,globsces23,globsces24,globsces25,
              globsces26, globsces27,globsces28,globsces29,globsces30,globsces31,
              globsces32)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(globsces2),byrow=FALSE)),
                     globsces_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/globsces_N=32.csv", row.names = FALSE)
  
  
  
  #45-----------------------------lobd--------------------
  #Assign a name to the data set   
  lobd_data<- LoBD
  #Get the last column of the data set 
  lobd_dataLast <- getLastCol(lobd_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(lobd_data)
  #Remove the last column of the data set 
  lobd_data <-  removeLastCol(lobd_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("lobd", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(lobd_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(lobd2,lobd3,lobd4,lobd5,lobd6,
              lobd7,lobd8,lobd9)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(lobd2),byrow=FALSE)),
                     lobd_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/lobd_N=9.csv", row.names = FALSE)
  
  
  
  #46-----------------------------iotaprice--------------------
  #Assign a name to the data set   
  iotaprice_data<- iota_price
  #Get the last column of the data set 
  iotaprice_dataLast <- getLastCol(iotaprice_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(iotaprice_data)
  #Remove the last column of the data set 
  iotaprice_data <-  removeLastCol(iotaprice_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("iotaprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(iotaprice_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(iotaprice2,iotaprice3,iotaprice4,iotaprice5,iotaprice6,
              iotaprice7,iotaprice8,iotaprice9,iotaprice10,iotaprice11,iotaprice12)
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(iotaprice2),byrow=FALSE)),
                     iotaprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/iotaprice_N=12.csv", row.names = FALSE)
  
  
  
  #47-----------------------------melanoma--------------------
  #Assign a name to the data set   
  melanoma_data<- Melanoma
  #Get the last column of the data set 
  melanoma_dataLast <- getLastCol(melanoma_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(melanoma_data)
  #Remove the last column of the data set 
  melanoma_data <-  removeLastCol(melanoma_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("melanoma", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(melanoma_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(melanoma2,melanoma3,melanoma4,melanoma5,melanoma6,
              melanoma7,melanoma8,melanoma9,melanoma10,melanoma11,
              melanoma12,melanoma13,melanoma14
              )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(melanoma2),byrow=FALSE)),
                     melanoma_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/melanoma_N=14.csv", row.names = FALSE)
  
  
  #48-----------------------------mode--------------------
  #Assign a name to the data set   
  mode_data<- Mode
  #Get the last column of the data set 
  mode_dataLast <- getLastCol(mode_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(mode_data)
  #Remove the last column of the data set 
  mode_data <-  removeLastCol(mode_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("mode", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(mode_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(mode2,mode3,mode4,mode5,mode6,
              mode7,mode8,mode9,mode10,mode11,
              mode12,mode13,mode14,mode15,mode16,
              mode17,mode18,mode19,mode20,mode21
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(mode2),byrow=FALSE)),
                     mode_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/mode_N=21.csv", row.names = FALSE)
  
  
  
  #49-----------------------------omisegoprice--------------------
  #Assign a name to the data set   
  omisegoprice_data<- omisego_price
  #Get the last column of the data set 
  omisegoprice_dataLast <- getLastCol(omisegoprice_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(omisegoprice_data)
  #Remove the last column of the data set 
  omisegoprice_data <-  removeLastCol(omisegoprice_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("omisegoprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(omisegoprice_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(omisegoprice2,omisegoprice3,omisegoprice4,omisegoprice5,omisegoprice6,
              omisegoprice7,omisegoprice8,omisegoprice9,omisegoprice10,omisegoprice11
                )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(omisegoprice2),byrow=FALSE)),
                     omisegoprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/omisegoprice_N=11.csv", row.names = FALSE)
  
  
  
  #50-----------------------------malaria--------------------
  #Assign a name to the data set   
  malaria_data<- `Malaria Functional Clean`
  #Get the last column of the data set 
  malaria_dataLast <- getLastCol(malaria_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(malaria_data)
  #Remove the last column of the data set 
  malaria_data <-  removeLastCol(malaria_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("malaria", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(malaria_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(malaria2,malaria3,malaria4,malaria5,malaria6,
              malaria7,malaria8,malaria9,malaria10,malaria11,
              malaria12,malaria13,malaria14,malaria15,malaria16,
              malaria17,malaria18,malaria19,malaria20,malaria21,
              malaria22,malaria23
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(malaria2),byrow=FALSE)),
                     malaria_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/malaria_N=23.csv", row.names = FALSE)
  
  
  #51-----------------------------bezdekIris--------------------
  #Assign a name to the data set   
  bezdekIris_data<- bezdekIrisClean
  #Get the last column of the data set 
  bezdekIris_dataLast <- getLastCol(bezdekIris_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bezdekIris_data)
  #Remove the last column of the data set 
  bezdekIris_data <-  removeLastCol(bezdekIris_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bezdekIris", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bezdekIris_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bezdekIris2,bezdekIris3,bezdekIris4,bezdekIris5,bezdekIris6,
              bezdekIris7,bezdekIris8,bezdekIris9,bezdekIris10,bezdekIris11,
              bezdekIris12
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bezdekIris2),byrow=FALSE)),
                     bezdekIris_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bezdekIris_N=12.csv", row.names = FALSE)
  
  
  #52-----------------------------birthwt--------------------
  #Assign a name to the data set   
  birthwt_data<- birthwt
  #Get the last column of the data set 
  birthwt_dataLast <- getLastCol(birthwt_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(birthwt_data)
  #Remove the last column of the data set 
  birthwt_data <-  removeLastCol(birthwt_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("birthwt", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(birthwt_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(birthwt2,birthwt3,birthwt4,birthwt5,birthwt6,
              birthwt7,birthwt8,birthwt9,birthwt10,birthwt11,
              birthwt12,birthwt13,birthwt14
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(birthwt2),byrow=FALSE)),
                     birthwt_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/birthwt_N=14.csv", row.names = FALSE)
  
  
  
  #53-----------------------------cement--------------------
  #Assign a name to the data set   
  cement_data<- cement
  #Get the last column of the data set 
  cement_dataLast <- getLastCol(cement_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(cement_data)
  #Remove the last column of the data set 
  cement_data <-  removeLastCol(cement_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("cement", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(cement_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(cement2,cement3,cement4,cement5,cement6,
              cement7,cement8,cement9,cement10,cement11,
              cement12,cement13,cement14, cement15,
              cement16,cement17,cement18
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(cement2),byrow=FALSE)),
                     cement_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/cement_N=18.csv", row.names = FALSE)
  
  
  
  #54-----------------------------colorsurvey--------------------
  #Assign a name to the data set   
  colorsurvey_data<- `Color-survey-cnum-vhcm-lab-new 1`
  #Get the last column of the data set 
  colorsurvey_dataLast <- getLastCol(colorsurvey_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(colorsurvey_data)
  #Remove the last column of the data set 
  colorsurvey_data <-  removeLastCol(colorsurvey_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("colorsurvey", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(colorsurvey_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(colorsurvey2,colorsurvey3,colorsurvey4,colorsurvey5,colorsurvey6,
              colorsurvey7,colorsurvey8,colorsurvey9,colorsurvey10,colorsurvey11,
              colorsurvey12,colorsurvey13,colorsurvey14, colorsurvey15,
              colorsurvey16,colorsurvey17,colorsurvey18
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(colorsurvey2),byrow=FALSE)),
                     colorsurvey_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/colorsurvey_N=18.csv", row.names = FALSE)
  
  
  
  #55-----------------------------column3c--------------------
  #Assign a name to the data set   
  column3c_data<- column_3C_weka
  #Get the last column of the data set 
  column3c_dataLast <- getLastCol(column3c_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(column3c_data)
  #Remove the last column of the data set 
  column3c_data <-  removeLastCol(column3c_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("column3c", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(column3c_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(column3c2,column3c3,column3c4,column3c5,column3c6,
              column3c7,column3c8,column3c9,column3c10,column3c11,
              column3c12,column3c13,column3c14, column3c15,
              column3c16,column3c17,column3c18
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(column3c2),byrow=FALSE)),
                     column3c_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/column3c_N=18.csv", row.names = FALSE)
  
  
  #56-----------------------------confidence--------------------
  #Assign a name to the data set   
  confidence_data<- confidence
  #Get the last column of the data set 
  confidence_dataLast <- getLastCol(confidence_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(confidence_data)
  #Remove the last column of the data set 
  confidence_data <-  removeLastCol(confidence_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("confidence", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(confidence_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(confidence2,confidence3,confidence4,confidence5,confidence6,
              confidence7,confidence8
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(confidence2),byrow=FALSE)),
                     confidence_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/confidence_N=8.csv", row.names = FALSE)
  
  
  
  
  #57-----------------------------creditscore--------------------
  #Assign a name to the data set   
  creditscore_data<- creditscore
  #Get the last column of the data set 
  creditscore_dataLast <- getLastCol(creditscore_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(creditscore_data)
  #Remove the last column of the data set 
  creditscore_data <-  removeLastCol(creditscore_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("creditscore", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(creditscore_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(creditscore2,creditscore3,creditscore4,creditscore5,creditscore6,
              creditscore7,creditscore8,creditscore9,creditscore10
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(creditscore2),byrow=FALSE)),
                     creditscore_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/creditscore_N=10.csv", row.names = FALSE)
  
  
  #58-----------------------------facealltest--------------------
  #Assign a name to the data set   
  facealltest_data<- FaceAll_TEST
  #Get the last column of the data set 
  facealltest_dataLast <- getLastCol(facealltest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(facealltest_data)
  #Remove the last column of the data set 
  facealltest_data <-  removeLastCol(facealltest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("facealltest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(facealltest_data,center =i, algorithm = "Hartigan-Wong")$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(facealltest2,facealltest3,facealltest4,facealltest5,facealltest6,
              facealltest7,facealltest8,facealltest9,facealltest10,
              facealltest11,facealltest12,facealltest13,facealltest14,facealltest15,
              facealltest16,facealltest17,facealltest18,facealltest19,
              facealltest20,facealltest21,facealltest22,facealltest23,facealltest24,
              facealltest25,facealltest26,facealltest27,facealltest28,
              facealltest29,facealltest30,facealltest31,facealltest32,facealltest33,
              facealltest34,facealltest35,facealltest36,facealltest37,
              facealltest38,facealltest39,facealltest40,facealltest41
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(facealltest2),byrow=FALSE)),
                     facealltest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/facealltest_N=41.csv", row.names = FALSE)
  
  #59-----------------------------facesUCRTrain--------------------
  #Assign a name to the data set   
  facesUCRTrain_data<- FacesUCR_TRAIN
  #Get the last column of the data set 
  facesUCRTrain_dataLast <- getLastCol(facesUCRTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(facesUCRTrain_data)
  #Remove the last column of the data set 
  facesUCRTrain_data <-  removeLastCol(facesUCRTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("facesUCRTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(facesUCRTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(facesUCRTrain2,facesUCRTrain3,facesUCRTrain4,facesUCRTrain5,facesUCRTrain6,
              facesUCRTrain7,facesUCRTrain8,facesUCRTrain9,facesUCRTrain10,
              facesUCRTrain11,facesUCRTrain12,facesUCRTrain13,facesUCRTrain14
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(facesUCRTrain2),byrow=FALSE)),
                     facesUCRTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/facesUCRTrain_N=41.csv", row.names = FALSE)
  
  
  
  #60-----------------------------facesUCRTest--------------------
  #Assign a name to the data set   
  facesUCRTest_data<- FacesUCR_TEST
  #Get the last column of the data set 
  facesUCRTest_dataLast <- getLastCol(facesUCRTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(facesUCRTest_data)
  #Remove the last column of the data set 
  facesUCRTest_data <-  removeLastCol(facesUCRTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("facesUCRTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(facesUCRTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(facesUCRTest2,facesUCRTest3,facesUCRTest4,facesUCRTest5,facesUCRTest6,
              facesUCRTest7,facesUCRTest8,facesUCRTest9,facesUCRTest10,
              facesUCRTest11,facesUCRTest12,facesUCRTest13,facesUCRTest14,facesUCRTest15,
              facesUCRTest16,facesUCRTest17,facesUCRTest18,facesUCRTest19,
              facesUCRTest20,facesUCRTest21,facesUCRTest22,facesUCRTest23,facesUCRTest24,
              facesUCRTest25,facesUCRTest26,facesUCRTest27,facesUCRTest28,
              facesUCRTest29,facesUCRTest30,facesUCRTest31,facesUCRTest32,facesUCRTest33,
              facesUCRTest34,facesUCRTest35,facesUCRTest36,facesUCRTest37,
              facesUCRTest38,facesUCRTest39,facesUCRTest40,facesUCRTest41,
              facesUCRTest42,facesUCRTest43,facesUCRTest44,facesUCRTest45
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(facesUCRTest2),byrow=FALSE)),
                     facesUCRTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/facesUCRTest_N=41.csv", row.names = FALSE)
  
  
  
  #61-----------------------------ecg200Train--------------------
  #Assign a name to the data set   
  ecg200Train_data<- ECG200_TRAIN
  #Get the last column of the data set 
  ecg200Train_dataLast <- getLastCol(ecg200Train_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ecg200Train_data)
  #Remove the last column of the data set 
  ecg200Train_data <-  removeLastCol(ecg200Train_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ecg200Train", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ecg200Train_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ecg200Train2,ecg200Train3,ecg200Train4,ecg200Train5,ecg200Train6,
              ecg200Train7,ecg200Train8,ecg200Train9,ecg200Train10
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ecg200Train2),byrow=FALSE)),
                     ecg200Train_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ecg200Train_N=10.csv", row.names = FALSE)
  
  
  
  #62-----------------------------ecg5000Train--------------------
  #Assign a name to the data set   
  ecg5000Train_data<- ECG5000_TRAIN
  #Get the last column of the data set 
  ecg5000Train_dataLast <- getLastCol(ecg5000Train_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ecg5000Train_data)
  #Remove the last column of the data set 
  ecg5000Train_data <-  removeLastCol(ecg5000Train_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ecg5000Train", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ecg5000Train_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ecg5000Train2,ecg5000Train3,ecg5000Train4,ecg5000Train5,ecg5000Train6,
              ecg5000Train7,ecg5000Train8,ecg5000Train9,ecg5000Train10,
              ecg5000Train11,ecg5000Train12,ecg5000Train13,ecg5000Train14,ecg5000Train15,
              ecg5000Train16,ecg5000Train17,ecg5000Train18,ecg5000Train19,
              ecg5000Train20,ecg5000Train21,ecg5000Train22
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ecg5000Train2),byrow=FALSE)),
                     ecg5000Train_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ecg5000Train_N=22.csv", row.names = FALSE)
  
  
  #63-----------------------------distalphaoutageTest--------------------
  #Assign a name to the data set   
  distalphaoutageTest_data<- DistalPhalanxOutlineAgeGroup_TEST
  #Get the last column of the data set 
  distalphaoutageTest_dataLast <- getLastCol(distalphaoutageTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(distalphaoutageTest_data)
  #Remove the last column of the data set 
  distalphaoutageTest_data <-  removeLastCol(distalphaoutageTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("distalphaoutageTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(distalphaoutageTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(distalphaoutageTest2,distalphaoutageTest3,distalphaoutageTest4,distalphaoutageTest5,distalphaoutageTest6,
              distalphaoutageTest7,distalphaoutageTest8,distalphaoutageTest9,distalphaoutageTest10,
              distalphaoutageTest11,distalphaoutageTest12,distalphaoutageTest13,distalphaoutageTest14,distalphaoutageTest15,
              distalphaoutageTest16,distalphaoutageTest17,distalphaoutageTest18,distalphaoutageTest19,
              distalphaoutageTest20
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(distalphaoutageTest2),byrow=FALSE)),
                     distalphaoutageTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/distalphaoutageTest_N=20.csv", row.names = FALSE)
  
  
  
  #64-----------------------------distalphaoutageTrain--------------------
  #Assign a name to the data set   
  distalphaoutageTrain_data<- DistalPhalanxOutlineAgeGroup_TRAIN
  #Get the last column of the data set 
  distalphaoutageTrain_dataLast <- getLastCol(distalphaoutageTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(distalphaoutageTrain_data)
  #Remove the last column of the data set 
  distalphaoutageTrain_data <-  removeLastCol(distalphaoutageTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("distalphaoutageTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(distalphaoutageTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(distalphaoutageTrain2,distalphaoutageTrain3,distalphaoutageTrain4,distalphaoutageTrain5,distalphaoutageTrain6,
              distalphaoutageTrain7,distalphaoutageTrain8,distalphaoutageTrain9,distalphaoutageTrain10,
              distalphaoutageTrain11,distalphaoutageTrain12
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(distalphaoutageTrain2),byrow=FALSE)),
                     distalphaoutageTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/distalphaoutageTrain_N=12.csv", row.names = FALSE)
  
  
  
  #65-----------------------------distalphaTWTest--------------------
  #Assign a name to the data set   
  distalphaTWTest_data<- DistalPhalanxTW_TEST
  #Get the last column of the data set 
  distalphaTWTest_dataLast <- getLastCol(distalphaTWTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(distalphaTWTest_data)
  #Remove the last column of the data set 
  distalphaTWTest_data <-  removeLastCol(distalphaTWTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("distalphaTWTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(distalphaTWTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(distalphaTWTest2,distalphaTWTest3,distalphaTWTest4,distalphaTWTest5,distalphaTWTest6,
              distalphaTWTest7,distalphaTWTest8,distalphaTWTest9,distalphaTWTest10,
              distalphaTWTest11,distalphaTWTest12, distalphaTWTest13,distalphaTWTest14,
              distalphaTWTest15,distalphaTWTest16,distalphaTWTest17,distalphaTWTest18,
              distalphaTWTest19,distalphaTWTest20
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(distalphaTWTest2),byrow=FALSE)),
                     distalphaTWTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/distalphaTWTest_N=20.csv", row.names = FALSE)
  
  
  
  #66-----------------------------distalphaTWTrain--------------------
  #Assign a name to the data set   
  distalphaTWTrain_data<- DistalPhalanxTW_TRAIN
  #Get the last column of the data set 
  distalphaTWTrain_dataLast <- getLastCol(distalphaTWTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(distalphaTWTrain_data)
  #Remove the last column of the data set 
  distalphaTWTrain_data <-  removeLastCol(distalphaTWTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("distalphaTWTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(distalphaTWTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(distalphaTWTrain2,distalphaTWTrain3,distalphaTWTrain4,distalphaTWTrain5,distalphaTWTrain6,
              distalphaTWTrain7,distalphaTWTrain8,distalphaTWTrain9,distalphaTWTrain10,
              distalphaTWTrain11,distalphaTWTrain12
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(distalphaTWTrain2),byrow=FALSE)),
                     distalphaTWTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/distalphaTWTrain_N=12.csv", row.names = FALSE)
  
  
  
  #67-----------------------------statlib2005ch17--------------------
  #Assign a name to the data set   
  statlib2005ch17_data<- `statlib-20050214-csb_ch17`
  #Get the last column of the data set 
  statlib2005ch17_dataLast <- getLastCol(statlib2005ch17_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(statlib2005ch17_data)
  #Remove the last column of the data set 
  statlib2005ch17_data <-  removeLastCol(statlib2005ch17_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("statlib2005ch17", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(statlib2005ch17_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(statlib2005ch172,statlib2005ch173,statlib2005ch174,statlib2005ch175,statlib2005ch176,
              statlib2005ch177,statlib2005ch178
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(statlib2005ch172),byrow=FALSE)),
                     statlib2005ch17_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/statlib2005ch17_N=08.csv", row.names = FALSE)
  
  
  
  #68-----------------------------statlib2005ch5--------------------
  #Assign a name to the data set   
  statlib2005ch5_data<- `statlib-20050214-csb_ch5`
  #Get the last column of the data set 
  statlib2005ch5_dataLast <- getLastCol(statlib2005ch5_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(statlib2005ch5_data)
  #Remove the last column of the data set 
  statlib2005ch5_data <-  removeLastCol(statlib2005ch5_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("statlib2005ch5", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(statlib2005ch5_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(statlib2005ch52,statlib2005ch53,statlib2005ch54,statlib2005ch55,
              statlib2005ch56,statlib2005ch57,statlib2005ch58,
              statlib2005ch59,statlib2005ch510,statlib2005ch511,statlib2005ch512,
              statlib2005ch513,statlib2005ch514,statlib2005ch515,
              statlib2005ch516,statlib2005ch517,statlib2005ch518,
              statlib2005ch519,statlib2005ch520,statlib2005ch521,statlib2005ch522,
              statlib2005ch523,statlib2005ch524,statlib2005ch525
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(statlib2005ch52),byrow=FALSE)),
                     statlib2005ch5_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/statlib2005ch5_N=25.csv", row.names = FALSE)
  
  
  
  
  #69-----------------------------statlib2014prnn--------------------
  #Assign a name to the data set   
  statlib2014prnn_data<- `statlib-20050214-prnn_viruses`
  #Get the last column of the data set 
  statlib2014prnn_dataLast <- getLastCol(statlib2014prnn_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(statlib2014prnn_data)
  #Remove the last column of the data set 
  statlib2014prnn_data <-  removeLastCol(statlib2014prnn_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("statlib2014prnn", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(statlib2014prnn_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(statlib2014prnn2,statlib2014prnn3,statlib2014prnn4,statlib2014prnn5,
              statlib2014prnn6,statlib2014prnn7,statlib2014prnn8
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(statlib2014prnn2),byrow=FALSE)),
                     statlib2014prnn_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/statlib2014prnn_N=8.csv", row.names = FALSE)
  
  
  
  #70-----------------------------statlib2014rabe--------------------
  #Assign a name to the data set   
  statlib2014rabe_data<- `statlib-20050214-rabe_148`
  #Get the last column of the data set 
  statlib2014rabe_dataLast <- getLastCol(statlib2014rabe_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(statlib2014rabe_data)
  #Remove the last column of the data set 
  statlib2014rabe_data <-  removeLastCol(statlib2014rabe_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("statlib2014rabe", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(statlib2014rabe_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(statlib2014rabe2,statlib2014rabe3,statlib2014rabe4,statlib2014rabe5,
              statlib2014rabe6,statlib2014rabe7,statlib2014rabe8
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(statlib2014rabe2),byrow=FALSE)),
                     statlib2014rabe_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/statlib2014rabe_N=8.csv", row.names = FALSE)
  
  
  
  
  #71-----------------------------swedisleafTest--------------------
  #Assign a name to the data set   
  swedisleafTest_data<- SwedishLeaf_TEST
  #Get the last column of the data set 
  swedisleafTest_dataLast <- getLastCol(swedisleafTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(swedisleafTest_data)
  #Remove the last column of the data set 
  swedisleafTest_data <-  removeLastCol(swedisleafTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("swedisleafTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(swedisleafTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(swedisleafTest2,swedisleafTest3,swedisleafTest4,swedisleafTest5,
              swedisleafTest6,swedisleafTest7,swedisleafTest8,swedisleafTest9,
              swedisleafTest10,swedisleafTest11,swedisleafTest12,swedisleafTest13,
              swedisleafTest14,swedisleafTest15,swedisleafTest16,swedisleafTest17,
              swedisleafTest18,swedisleafTest19,swedisleafTest20,swedisleafTest21,
              swedisleafTest22,swedisleafTest23,swedisleafTest24,swedisleafTest25
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(swedisleafTest2),byrow=FALSE)),
                     swedisleafTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/swedisleafTest_N=25.csv", row.names = FALSE)
  
  
  
  #72-----------------------------swedisleafTrain--------------------
  #Assign a name to the data set   
  swedisleafTrain_data<- SwedishLeaf_TRAIN
  #Get the last column of the data set 
  swedisleafTrain_dataLast <- getLastCol(swedisleafTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(swedisleafTrain_data)
  #Remove the last column of the data set 
  swedisleafTrain_data <-  removeLastCol(swedisleafTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("swedisleafTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(swedisleafTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(swedisleafTrain2,swedisleafTrain3,swedisleafTrain4,swedisleafTrain5,
              swedisleafTrain6,swedisleafTrain7,swedisleafTrain8,swedisleafTrain9,
              swedisleafTrain10,swedisleafTrain11,swedisleafTrain12,swedisleafTrain13,
              swedisleafTrain14,swedisleafTrain15,swedisleafTrain16,swedisleafTrain17,
              swedisleafTrain18,swedisleafTrain19,swedisleafTrain20,swedisleafTrain21,
              swedisleafTrain22
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(swedisleafTrain2),byrow=FALSE)),
                     swedisleafTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/swedisleafTrain_N=22.csv", row.names = FALSE)
  
  
  
  
  #73-----------------------------symbolsTest--------------------
  #Assign a name to the data set   
  symbolsTest_data<- symbolsTest_data
  #Get the last column of the data set 
  symbolsTest_dataLast <- getLastCol(symbolsTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(symbolsTest_data)
  #Remove the last column of the data set 
  symbolsTest_data <-  removeLastCol(symbolsTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("symbolsTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(symbolsTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(symbolsTest2,symbolsTest3,symbolsTest4,symbolsTest5,
              symbolsTest6,symbolsTest7,symbolsTest8,symbolsTest9,
              symbolsTest10,symbolsTest11,symbolsTest12,symbolsTest13,
              symbolsTest14,symbolsTest15,symbolsTest16,symbolsTest17,
              symbolsTest18,symbolsTest19,symbolsTest20,symbolsTest21,
              symbolsTest22,symbolsTest23,symbolsTest24,symbolsTest25,symbolsTest26,
              symbolsTest27,symbolsTest28,symbolsTest29,symbolsTest30,
              symbolsTest31,symbolsTest31
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(symbolsTest2),byrow=FALSE)),
                     symbolsTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/symbolsTest_N=32.csv", row.names = FALSE)
  
  
  
  #74-----------------------------syntheticontrolTest--------------------
  #Assign a name to the data set   
  syntheticontrolTest_data<- synthetic_control_TEST
  #Get the last column of the data set 
  syntheticontrolTest_dataLast <- getLastCol(syntheticontrolTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(syntheticontrolTest_data)
  #Remove the last column of the data set 
  syntheticontrolTest_data <-  removeLastCol(syntheticontrolTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("syntheticontrolTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(syntheticontrolTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(syntheticontrolTest2,syntheticontrolTest3,syntheticontrolTest4,syntheticontrolTest5,
              syntheticontrolTest6,syntheticontrolTest7,syntheticontrolTest8,syntheticontrolTest9,
              syntheticontrolTest10,syntheticontrolTest11,syntheticontrolTest12,syntheticontrolTest13,
              syntheticontrolTest14,syntheticontrolTest15,syntheticontrolTest16,syntheticontrolTest17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(syntheticontrolTest2),byrow=FALSE)),
                     syntheticontrolTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/syntheticontrolTest_N=17.csv", row.names = FALSE)
  
  
  
  
  #75-----------------------------syntheticontrolTrain--------------------
  #Assign a name to the data set   
  syntheticontrolTrain_data<- synthetic_control_TEST
  #Get the last column of the data set 
  syntheticontrolTrain_dataLast <- getLastCol(syntheticontrolTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(syntheticontrolTrain_data)
  #Remove the last column of the data set 
  syntheticontrolTrain_data <-  removeLastCol(syntheticontrolTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("syntheticontrolTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(syntheticontrolTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(syntheticontrolTrain2,syntheticontrolTrain3,syntheticontrolTrain4,syntheticontrolTrain5,
              syntheticontrolTrain6,syntheticontrolTrain7,syntheticontrolTrain8,syntheticontrolTrain9,
              syntheticontrolTrain10,syntheticontrolTrain11,syntheticontrolTrain12,syntheticontrolTrain13,
              syntheticontrolTrain14,syntheticontrolTrain15,syntheticontrolTrain16,syntheticontrolTrain17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(syntheticontrolTrain2),byrow=FALSE)),
                     syntheticontrolTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/syntheticontrolTrain_N=17.csv", row.names = FALSE)

  
  
  #75-----------------------------tipjoke--------------------
  #Assign a name to the data set   
  tipjoke_data<- TipJoke
  #Get the last column of the data set 
  tipjoke_dataLast <- getLastCol(tipjoke_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(tipjoke_data)
  #Remove the last column of the data set 
  tipjoke_data <-  removeLastCol(tipjoke_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("tipjoke", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(tipjoke_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(tipjoke2,tipjoke3,tipjoke4,tipjoke5,
              tipjoke6,tipjoke7,tipjoke8,tipjoke9,
              tipjoke10,tipjoke11,tipjoke12,tipjoke13,
              tipjoke14,tipjoke15
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(tipjoke2),byrow=FALSE)),
                     tipjoke_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/tipjoke_N=17.csv", row.names = FALSE)
  
  
  #76-----------------------------ttimmuneIron--------------------
  #Assign a name to the data set   
  ttimmuneIron_data<- TT_Immunization_Vitamin_A_Iron_Supplement_And_Birth_Weight_District
  #Get the last column of the data set 
  ttimmuneIron_dataLast <- getLastCol(ttimmuneIron_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ttimmuneIron_data)
  #Remove the last column of the data set 
  ttimmuneIron_data <-  removeLastCol(ttimmuneIron_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ttimmuneIron", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ttimmuneIron_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ttimmuneIron2,ttimmuneIron3,ttimmuneIron4,ttimmuneIron5,
              ttimmuneIron6,ttimmuneIron7,ttimmuneIron8,ttimmuneIron9,
              ttimmuneIron10,ttimmuneIron11,ttimmuneIron12,ttimmuneIron13,
              ttimmuneIron14,ttimmuneIron15,ttimmuneIron16,ttimmuneIron17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ttimmuneIron2),byrow=FALSE)),
                     ttimmuneIron_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ttimmuneIron_N=17.csv", row.names = FALSE)
  
  
  
  #77-----------------------------utilities2--------------------
  #Assign a name to the data set   
  utilities2_data<- TT_Immunization_Vitamin_A_Iron_Supplement_And_Birth_Weight_District
  #Get the last column of the data set 
  utilities2_dataLast <- getLastCol(utilities2_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(utilities2_data)
  #Remove the last column of the data set 
  utilities2_data <-  removeLastCol(utilities2_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("utilities2", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(utilities2_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(utilities22,utilities23,utilities24,utilities25,
              utilities26,utilities27,utilities28,utilities29,
              utilities210,utilities211,utilities212,utilities213,
              utilities214,utilities215,utilities216,utilities217
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(utilities22),byrow=FALSE)),
                     utilities2_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/utilities2_N=17.csv", row.names = FALSE)
  
  
  #78-----------------------------vsilhouttexaa--------------------
  #Assign a name to the data set   
  vsilhouttexaa_data<- `Vehicle Silhouettes_xaa_Clean`
  #Get the last column of the data set 
  vsilhouttexaa_dataLast <- getLastCol(vsilhouttexaa_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(vsilhouttexaa_data)
  #Remove the last column of the data set 
  vsilhouttexaa_data <-  removeLastCol(vsilhouttexaa_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("vsilhouttexaa", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(vsilhouttexaa_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(vsilhouttexaa2,vsilhouttexaa3,vsilhouttexaa4,vsilhouttexaa5,
              vsilhouttexaa6,vsilhouttexaa7,vsilhouttexaa8,vsilhouttexaa9,
              vsilhouttexaa10
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(vsilhouttexaa2),byrow=FALSE)),
                     vsilhouttexaa_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/vsilhouttexaa_N=10.csv", row.names = FALSE)
  
  #79-----------------------------vsilhouttexac--------------------
  #Assign a name to the data set   
  vsilhouttexac_data<- `Vehicle Silhouettes_xac_clean`
  #Get the last column of the data set 
  vsilhouttexac_dataLast <- getLastCol(vsilhouttexac_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(vsilhouttexac_data)
  #Remove the last column of the data set 
  vsilhouttexac_data <-  removeLastCol(vsilhouttexac_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("vsilhouttexac", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(vsilhouttexac_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(vsilhouttexac2,vsilhouttexac3,vsilhouttexac4,vsilhouttexac5,
              vsilhouttexac6,vsilhouttexac7,vsilhouttexac8,vsilhouttexac9,
              vsilhouttexac10
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(vsilhouttexac2),byrow=FALSE)),
                     vsilhouttexac_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/vsilhouttexac_N=10.csv", row.names = FALSE)
  
  
  
  #80-----------------------------vercolumn--------------------
  #Assign a name to the data set   
  vercolumn_data<- vertebral_column
  #Get the last column of the data set 
  vercolumn_dataLast <- getLastCol(vercolumn_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(vercolumn_data)
  #Remove the last column of the data set 
  vercolumn_data <-  removeLastCol(vercolumn_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("vercolumn", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(vercolumn_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(vercolumn2,vercolumn3,vercolumn4,vercolumn5,
              vercolumn6,vercolumn7,vercolumn8,vercolumn9,
              vercolumn10,vercolumn11,vercolumn12,vercolumn13,
              vercolumn14,vercolumn15,vercolumn16,vercolumn17,
              vercolumn18
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(vercolumn2),byrow=FALSE)),
                     vercolumn_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/vercolumn_N=18.csv", row.names = FALSE)
  
  
  
  
  #81-----------------------------vineyard--------------------
  #Assign a name to the data set   
  vineyard_data<- vineyard
  #Get the last column of the data set 
  vineyard_dataLast <- getLastCol(vineyard_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(vineyard_data)
  #Remove the last column of the data set 
  vineyard_data <-  removeLastCol(vineyard_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("vineyard", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(vineyard_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(vineyard2,vineyard3,vineyard4,vineyard5,
              vineyard6,vineyard7,vineyard8,vineyard9,
              vineyard10,vineyard11,vineyard12,vineyard13,
              vineyard14,vineyard15,vineyard16,vineyard17,
              vineyard18,vineyard19,vineyard20,vineyard21,
              vineyard22
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(vineyard2),byrow=FALSE)),
                     vineyard_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/vineyard_N=22.csv", row.names = FALSE)
  
  
  
  
  #82-----------------------------voucher--------------------
  #Assign a name to the data set   
  voucher_data<- voucher
  #Get the last column of the data set 
  voucher_dataLast <- getLastCol(voucher_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(voucher_data)
  #Remove the last column of the data set 
  voucher_data <-  removeLastCol(voucher_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("voucher", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(voucher_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(voucher2,voucher3,voucher4,voucher5,
              voucher6,voucher7,voucher8,voucher9,
              voucher10,voucher11,voucher12,voucher13,
              voucher14,voucher15,voucher16,voucher17,
              voucher18,voucher19,voucher20,voucher21,
              voucher22,voucher23,voucher24,voucher25,voucher26,
              voucher27,voucher28,voucher29,voucher30,
              voucher31
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(voucher2),byrow=FALSE)),
                     voucher_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/voucher_N=31.csv", row.names = FALSE)
  
  
  
  
  
  #83-----------------------------vvbreast--------------------
  #Assign a name to the data set   
  vvbreast_data<- VV_Breastfeeding_And_Supplementation_District
  #Get the last column of the data set 
  vvbreast_dataLast <- getLastCol(vvbreast_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(vvbreast_data)
  #Remove the last column of the data set 
  vvbreast_data <-  removeLastCol(vvbreast_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("vvbreast", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(vvbreast_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(vvbreast2,vvbreast3,vvbreast4,vvbreast5,
              vvbreast6,vvbreast7,vvbreast8,vvbreast9,
              vvbreast10,vvbreast11,vvbreast12,vvbreast13,
              vvbreast14,vvbreast15,vvbreast16,vvbreast17
              
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(vvbreast2),byrow=FALSE)),
                     vvbreast_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/vvbreast_N=31.csv", row.names = FALSE)
  
  
  
  #84-----------------------------wages2--------------------
  #Assign a name to the data set   
  wages2_data<- wage2
  #Get the last column of the data set 
  wages2_dataLast <- getLastCol(wages2_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wages2_data)
  #Remove the last column of the data set 
  wages2_data <-  removeLastCol(wages2_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wages2", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wages2_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wages22,wages23,wages24,wages25,
              wages26,wages27,wages28,wages29,
              wages210,wages211,wages212,wages213,
              wages214,wages215,wages216,wages217,
              wages218,wages219,wages220,wages221,
              wages222,wages223,wages224,wages225,
              wages226,wages227,wages228,wages229,
              wages230,wages231
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wages22),byrow=FALSE)),
                     wages2_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wages2_N=31.csv", row.names = FALSE)
  
  
  #85-----------------------------wdbc--------------------
  #Assign a name to the data set   
  wdbc_data<- wdbc
  #Get the last column of the data set 
  wdbc_dataLast <- getLastCol(wdbc_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wdbc_data)
  #Remove the last column of the data set 
  wdbc_data <-  removeLastCol(wdbc_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wdbc", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wdbc_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wdbc2,wdbc3,wdbc4,wdbc5,
              wdbc6,wdbc7,wdbc8,wdbc9,
              wdbc10,wdbc11,wdbc12,wdbc13,
              wdbc14,wdbc15,wdbc16,wdbc17,
              wdbc18,wdbc19,wdbc20,wdbc21,
              wdbc22,wdbc23,wdbc24
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wdbc2),byrow=FALSE)),
                     wdbc_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wdbc_N=24.csv", row.names = FALSE)
  
  
  
  #86-----------------------------wildcat--------------------
  #Assign a name to the data set   
  wildcat_data<- wildcat
  #Get the last column of the data set 
  wildcat_dataLast <- getLastCol(wildcat_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wildcat_data)
  #Remove the last column of the data set 
  wildcat_data <-  removeLastCol(wildcat_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wildcat", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wildcat_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wildcat2,wildcat3,wildcat4,wildcat5,
              wildcat6,wildcat7,wildcat8,wildcat9,
              wildcat10,wildcat11,wildcat12,wildcat13
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wildcat2),byrow=FALSE)),
                     wildcat_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wildcat_N=13.csv", row.names = FALSE)
  
  
  
  #87-----------------------------wine--------------------
  #Assign a name to the data set   
  wine_data<- wine
  #Get the last column of the data set 
  wine_dataLast <- getLastCol(wine_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wine_data)
  #Remove the last column of the data set 
  wine_data <-  removeLastCol(wine_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wine", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wine_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wine2,wine3,wine4,wine5,
              wine6,wine7,wine8,wine9,
              wine10,wine11,wine12,wine13
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wine2),byrow=FALSE)),
                     wine_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wine_N=13.csv", row.names = FALSE)
  
  
  
  #88-----------------------------micepcortex--------------------
  #Assign a name to the data set   
  micepcortex_data<- `Mice P Data_Cortex_Nuclear-2`
  #Get the last column of the data set 
  micepcortex_dataLast <- getLastCol(micepcortex_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(micepcortex_data)
  #Remove the last column of the data set 
  micepcortex_data <-  removeLastCol(micepcortex_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("micepcortex", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(micepcortex_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(micepcortex2,micepcortex3,micepcortex4,micepcortex5,
              micepcortex6,micepcortex7,micepcortex8,micepcortex9,
              micepcortex10,micepcortex11,micepcortex12,micepcortex13,
              micepcortex14,micepcortex15,micepcortex16,micepcortex17,
              micepcortex18,micepcortex19,micepcortex20,micepcortex21,
              micepcortex22,micepcortex23,micepcortex24,micepcortex25,
              micepcortex26,micepcortex27,micepcortex28,micepcortex29,
              micepcortex30,micepcortex31,micepcortex32,micepcortex33
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(micepcortex2),byrow=FALSE)),
                     micepcortex_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/micepcortex_N=32.csv", row.names = FALSE)
  
  
  
  #89-----------------------------middlephalan--------------------
  #Assign a name to the data set   
  middlephalan_data<- MiddlePhalanxOutlineAgeGroup_TEST
  #Get the last column of the data set 
  middlephalan_dataLast <- getLastCol(middlephalan_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(middlephalan_data)
  #Remove the last column of the data set 
  middlephalan_data <-  removeLastCol(middlephalan_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("middlephalan", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(middlephalan_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(middlephalan2,middlephalan3,middlephalan4,middlephalan5,
              middlephalan6,middlephalan7,middlephalan8,middlephalan9,
              middlephalan10,middlephalan11,middlephalan12,middlephalan13,
              middlephalan14,middlephalan15,middlephalan16,middlephalan17,
              middlephalan18,middlephalan19,middlephalan20
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(middlephalan2),byrow=FALSE)),
                     middlephalan_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/middlephalan_N=20.csv", row.names = FALSE)
  
  
  
  
  
  #90-----------------------------middlephalanTWTest--------------------
  #Assign a name to the data set   
  middlephalanTWTest_data<- MiddlePhalanxTW_TEST
  #Get the last column of the data set 
  middlephalanTWTest_dataLast <- getLastCol(middlephalanTWTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(middlephalanTWTest_data)
  #Remove the last column of the data set 
  middlephalanTWTest_data <-  removeLastCol(middlephalanTWTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("middlephalanTWTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(middlephalanTWTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(middlephalanTWTest2,middlephalanTWTest3,middlephalanTWTest4,middlephalanTWTest5,
              middlephalanTWTest6,middlephalanTWTest7,middlephalanTWTest8,middlephalanTWTest9,
              middlephalanTWTest10,middlephalanTWTest11,middlephalanTWTest12,middlephalanTWTest13,
              middlephalanTWTest14,middlephalanTWTest15,middlephalanTWTest16,middlephalanTWTest17,
              middlephalanTWTest18,middlephalanTWTest19,middlephalanTWTest20
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(middlephalanTWTest2),byrow=FALSE)),
                     middlephalanTWTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/middlephalanTWTest_N=20.csv", row.names = FALSE)
  
  
  
  
  #91-----------------------------middlephalanTWTrain--------------------
  #Assign a name to the data set   
  middlephalanTWTrain_data<- MiddlePhalanxTW_TEST
  #Get the last column of the data set 
  middlephalanTWTrain_dataLast <- getLastCol(middlephalanTWTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(middlephalanTWTrain_data)
  #Remove the last column of the data set 
  middlephalanTWTrain_data <-  removeLastCol(middlephalanTWTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("middlephalanTWTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(middlephalanTWTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(middlephalanTWTrain2,middlephalanTWTrain3,middlephalanTWTrain4,middlephalanTWTrain5,
              middlephalanTWTrain6,middlephalanTWTrain7,middlephalanTWTrain8,middlephalanTWTrain9,
              middlephalanTWTrain10,middlephalanTWTrain11,middlephalanTWTrain12,middlephalanTWTrain13,
              middlephalanTWTrain14,middlephalanTWTrain15,middlephalanTWTrain16,middlephalanTWTrain17,
              middlephalanTWTrain18,middlephalanTWTrain19,middlephalanTWTrain20
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(middlephalanTWTrain2),byrow=FALSE)),
                     middlephalanTWTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/middlephalanTWTrain_N=20.csv", row.names = FALSE)
  
  
  
  
  
  #91-----------------------------motestrainTest--------------------
  #Assign a name to the data set   
  motestrainTest_data<- MoteStrain_TEST
  #Get the last column of the data set 
  motestrainTest_dataLast <- getLastCol(motestrainTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(motestrainTest_data)
  #Remove the last column of the data set 
  motestrainTest_data <-  removeLastCol(motestrainTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("motestrainTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(motestrainTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(motestrainTest2,motestrainTest3,motestrainTest4,motestrainTest5,
              motestrainTest6,motestrainTest7,motestrainTest8,motestrainTest9,
              motestrainTest10,motestrainTest11,motestrainTest12,motestrainTest13,
              motestrainTest14,motestrainTest15,motestrainTest16,motestrainTest17,
              motestrainTest18,motestrainTest19,motestrainTest20,
              motestrainTest21,motestrainTest22,motestrainTest23,motestrainTest24,
              motestrainTest25,motestrainTest26,motestrainTest27,motestrainTest28,
              motestrainTest29,motestrainTest30,motestrainTest31,
              motestrainTest32,motestrainTest33,motestrainTest34,motestrainTest35
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(motestrainTest2),byrow=FALSE)),
                     motestrainTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/motestrainTest_N=35.csv", row.names = FALSE)
  
  
  
  #92-----------------------------movelibraclean--------------------
  #Assign a name to the data set   
  movelibraclean_data<- movement_libras_0_Clean.data
  #Get the last column of the data set 
  movelibraclean_dataLast <- getLastCol(movelibraclean_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(movelibraclean_data)
  #Remove the last column of the data set 
  movelibraclean_data <-  removeLastCol(movelibraclean_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("movelibraclean", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(movelibraclean_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(movelibraclean2,movelibraclean3,movelibraclean4,movelibraclean5,
              movelibraclean6,movelibraclean7,movelibraclean8,movelibraclean9,
              movelibraclean10,movelibraclean11,movelibraclean12,movelibraclean13,
              movelibraclean14,movelibraclean15,movelibraclean16,movelibraclean17,
              movelibraclean18,movelibraclean19
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(movelibraclean2),byrow=FALSE)),
                     movelibraclean_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/movelibraclean_N=19.csv", row.names = FALSE)
  
  
  
  
  #93-----------------------------movelibra8--------------------
  #Assign a name to the data set   
  movelibra8_data<- movement_libras_8_Clean
  #Get the last column of the data set 
  movelibra8_dataLast <- getLastCol(movelibra8_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(movelibra8_data)
  #Remove the last column of the data set 
  movelibra8_data <-  removeLastCol(movelibra8_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("movelibra8", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(movelibra8_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(movelibra82,movelibra83,movelibra84,movelibra85,
              movelibra86,movelibra87,movelibra88,movelibra89,
              movelibra810,movelibra811,movelibra812
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(movelibra82),byrow=FALSE)),
                     movelibra8_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/movelibra8_N=12.csv", row.names = FALSE)
  
  
  #96-----------------------------movelibra10--------------------
  #Assign a name to the data set   
  movelibra10_data<- movement_libras_10_Clean
  #Get the last column of the data set 
  movelibra10_dataLast <- getLastCol(movelibra10_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(movelibra10_data)
  #Remove the last column of the data set 
  movelibra10_data <-  removeLastCol(movelibra10_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("movelibra10", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(movelibra10_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(movelibra102,movelibra103,movelibra104,movelibra105,
              movelibra106,movelibra107,movelibra108,movelibra109,
              movelibra1010,movelibra1011,movelibra1012,
              movelibra1013,movelibra1014,movelibra1015,movelibra1016
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(movelibra102),byrow=FALSE)),
                     movelibra10_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/movelibra10_N=16.csv", row.names = FALSE)
  
  
  
  
  #97-----------------------------nemprice--------------------
  #Assign a name to the data set   
  nemprice_data<- nem_price
  #Get the last column of the data set 
  nemprice_dataLast <- getLastCol(nemprice_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(nemprice_data)
  #Remove the last column of the data set 
  nemprice_data <-  removeLastCol(nemprice_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("nemprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(nemprice_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(nemprice2,nemprice3,nemprice4,nemprice5,
              nemprice6,nemprice7,nemprice8,nemprice9,
              nemprice10,nemprice11,nemprice12,
              nemprice13,nemprice14,nemprice15,nemprice16,
              nemprice17,nemprice18,nemprice19,nemprice20,
              nemprice21,nemprice22,nemprice23,
              nemprice24,nemprice25,nemprice26,nemprice27,
              nemprice28,nemprice29,nemprice30,nemprice31
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(nemprice2),byrow=FALSE)),
                     nemprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/nemprice_N=31.csv", row.names = FALSE)
  
  
  
  #98-----------------------------nnfamilyPlan--------------------
  #Assign a name to the data set   
  nnfamilyPlan_data<- NN_Family_Planning_Practices_Cmw_Aged_15_49_Years_District
  #Get the last column of the data set 
  nnfamilyPlan_dataLast <- getLastCol(nnfamilyPlan_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(nnfamilyPlan_data)
  #Remove the last column of the data set 
  nnfamilyPlan_data <-  removeLastCol(nnfamilyPlan_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("nnfamilyPlan", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(nnfamilyPlan_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(nnfamilyPlan2,nnfamilyPlan3,nnfamilyPlan4,nnfamilyPlan5,
              nnfamilyPlan6,nnfamilyPlan7,nnfamilyPlan8,nnfamilyPlan9,
              nnfamilyPlan10,nnfamilyPlan11,nnfamilyPlan12,
              nnfamilyPlan13,nnfamilyPlan14,nnfamilyPlan15,nnfamilyPlan16,
              nnfamilyPlan17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(nnfamilyPlan2),byrow=FALSE)),
                     nnfamilyPlan_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/nnfamilyPlan_N=17.csv", row.names = FALSE)
  
  
  
  #98-----------------------------nvecgthorax1Test--------------------
  #Assign a name to the data set   
  nvecgthorax1Test_data<- NonInvasiveFatalECG_Thorax1_TEST
  #Get the last column of the data set 
  nvecgthorax1Test_dataLast <- getLastCol(nvecgthorax1Test_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(nvecgthorax1Test_data)
  #Remove the last column of the data set 
  nvecgthorax1Test_data <-  removeLastCol(nvecgthorax1Test_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("nvecgthorax1Test", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(nvecgthorax1Test_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(nvecgthorax1Test2,nvecgthorax1Test3,nvecgthorax1Test4,nvecgthorax1Test5,
              nvecgthorax1Test6,nvecgthorax1Test7,nvecgthorax1Test8,nvecgthorax1Test9,
              nvecgthorax1Test10,nvecgthorax1Test11,nvecgthorax1Test12,nvecgthorax1Test13,
              nvecgthorax1Test14,nvecgthorax1Test15,nvecgthorax1Test16,nvecgthorax1Test17,
              nvecgthorax1Test18,nvecgthorax1Test19,nvecgthorax1Test20,nvecgthorax1Test21,
              nvecgthorax1Test22,nvecgthorax1Test23,nvecgthorax1Test24,nvecgthorax1Test25,
              nvecgthorax1Test26,nvecgthorax1Test27,nvecgthorax1Test28,nvecgthorax1Test29,
              nvecgthorax1Test30,nvecgthorax1Test31,nvecgthorax1Test32,nvecgthorax1Test33,
              nvecgthorax1Test34,nvecgthorax1Test35,nvecgthorax1Test36,nvecgthorax1Test37,
              nvecgthorax1Test38,nvecgthorax1Test39,nvecgthorax1Test40,nvecgthorax1Test41,
              nvecgthorax1Test42,nvecgthorax1Test43,nvecgthorax1Test44
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(nvecgthorax1Test2),byrow=FALSE)),
                     nvecgthorax1Test_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/nvecgthorax1Test_N=44.csv", row.names = FALSE)
  
  
  
  
  #99-----------------------------nvecgthorax1Train--------------------
  #Assign a name to the data set   
  nvecgthorax1Train_data<- NonInvasiveFatalECG_Thorax1_TRAIN
  #Get the last column of the data set 
  nvecgthorax1Train_dataLast <- getLastCol(nvecgthorax1Train_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(nvecgthorax1Train_data)
  #Remove the last column of the data set 
  nvecgthorax1Train_data <-  removeLastCol(nvecgthorax1Train_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("nvecgthorax1Train", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(nvecgthorax1Train_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(nvecgthorax1Train2,nvecgthorax1Train3,nvecgthorax1Train4,nvecgthorax1Train5,
              nvecgthorax1Train6,nvecgthorax1Train7,nvecgthorax1Train8,nvecgthorax1Train9,
              nvecgthorax1Train10,nvecgthorax1Train11,nvecgthorax1Train12,nvecgthorax1Train13,
              nvecgthorax1Train14,nvecgthorax1Train15,nvecgthorax1Train16,nvecgthorax1Train17,
              nvecgthorax1Train18,nvecgthorax1Train19,nvecgthorax1Train20,nvecgthorax1Train21,
              nvecgthorax1Train22,nvecgthorax1Train23,nvecgthorax1Train24,nvecgthorax1Train25,
              nvecgthorax1Train26,nvecgthorax1Train27,nvecgthorax1Train28,nvecgthorax1Train29,
              nvecgthorax1Train30,nvecgthorax1Train31,nvecgthorax1Train32,nvecgthorax1Train33,
              nvecgthorax1Train34,nvecgthorax1Train35,nvecgthorax1Train36,nvecgthorax1Train37,
              nvecgthorax1Train38,nvecgthorax1Train39,nvecgthorax1Train40,nvecgthorax1Train41,
              nvecgthorax1Train42
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(nvecgthorax1Train2),byrow=FALSE)),
                     nvecgthorax1Train_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/nvecgthorax1Train_N=42.csv", row.names = FALSE)
  
  
  
  
  #100-----------------------------nvecgthorax2Test--------------------
  #Assign a name to the data set   
  nvecgthorax2Test_data<- NonInvasiveFatalECG_Thorax2_TEST
  #Get the last column of the data set 
  nvecgthorax2Test_dataLast <- getLastCol(nvecgthorax2Test_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(nvecgthorax2Test_data)
  #Remove the last column of the data set 
  nvecgthorax2Test_data <-  removeLastCol(nvecgthorax2Test_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("nvecgthorax2Test", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(nvecgthorax2Test_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(nvecgthorax2Test2,nvecgthorax2Test3,nvecgthorax2Test4,nvecgthorax2Test5,
              nvecgthorax2Test6,nvecgthorax2Test7,nvecgthorax2Test8,nvecgthorax2Test9,
              nvecgthorax2Test10,nvecgthorax2Test11,nvecgthorax2Test12,nvecgthorax2Test13,
              nvecgthorax2Test14,nvecgthorax2Test15,nvecgthorax2Test16,nvecgthorax2Test17,
              nvecgthorax2Test18,nvecgthorax2Test19,nvecgthorax2Test20,nvecgthorax2Test21,
              nvecgthorax2Test22,nvecgthorax2Test23,nvecgthorax2Test24,nvecgthorax2Test25,
              nvecgthorax2Test26,nvecgthorax2Test27,nvecgthorax2Test28,nvecgthorax2Test29,
              nvecgthorax2Test30,nvecgthorax2Test31,nvecgthorax2Test32,nvecgthorax2Test33,
              nvecgthorax2Test34,nvecgthorax2Test35,nvecgthorax2Test36,nvecgthorax2Test37,
              nvecgthorax2Test38,nvecgthorax2Test39,nvecgthorax2Test40,nvecgthorax2Test41,
              nvecgthorax2Test42,nvecgthorax2Test43,nvecgthorax2Test44
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(nvecgthorax2Test2),byrow=FALSE)),
                     nvecgthorax2Test_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/nvecgthorax2Test_N=44.csv", row.names = FALSE)
  
  
  
  #101-----------------------------participation--------------------
  #Assign a name to the data set   
  participation_data<- Participation
  #Get the last column of the data set 
  participation_dataLast <- getLastCol(participation_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(participation_data)
  #Remove the last column of the data set 
  participation_data <-  removeLastCol(participation_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("participation", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(participation_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(participation2,participation3,participation4,participation5,
              participation6,participation7,participation8,participation9,
              participation10,participation11,participation12,participation13,
              participation14,participation15,participation16,participation17,
              participation18,participation19,participation20,participation21,
              participation22,participation23,participation24,participation25,
              participation26,participation27,participation28,participation29,
              participation30
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(participation2),byrow=FALSE)),
                     participation_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/participation_N=30.csv", row.names = FALSE)
  
  
  
  
  #102-----------------------------patentsRD--------------------
  #Assign a name to the data set   
  patentsRD_data<- PatentsRD
  #Get the last column of the data set 
  patentsRD_dataLast <- getLastCol(patentsRD_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(patentsRD_data)
  #Remove the last column of the data set 
  patentsRD_data <-  removeLastCol(patentsRD_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("patentsRD", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(patentsRD_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(patentsRD2,patentsRD3,patentsRD4,patentsRD5,
              patentsRD6,patentsRD7,patentsRD8,patentsRD9,
              patentsRD10,patentsRD11,patentsRD12,patentsRD13,
              patentsRD14,patentsRD15,patentsRD16,patentsRD17,
              patentsRD18,patentsRD19,patentsRD20,patentsRD21,
              patentsRD22,patentsRD23,patentsRD24,patentsRD25,
              patentsRD26,patentsRD27,patentsRD28,patentsRD29,
              patentsRD30,patentsRD31,patentsRD32,patentsRD33,
              patentsRD34,patentsRD35,patentsRD36,patentsRD37,
              patentsRD38,patentsRD39,patentsRD40
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(patentsRD2),byrow=FALSE)),
                     patentsRD_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/patentsRD_N=40.csv", row.names = FALSE)
  
  
  
  #103-----------------------------pimaIndians--------------------
  #Assign a name to the data set   
  pimaIndians_data<- `pima-indians-diabetes_Clean`
  #Get the last column of the data set 
  pimaIndians_dataLast <- getLastCol(pimaIndians_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(pimaIndians_data)
  #Remove the last column of the data set 
  pimaIndians_data <-  removeLastCol(pimaIndians_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("pimaIndians", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(pimaIndians_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(pimaIndians2,pimaIndians3,pimaIndians4,pimaIndians5,
              pimaIndians6,pimaIndians7,pimaIndians8,pimaIndians9,
              pimaIndians10,pimaIndians11,pimaIndians12,pimaIndians13,
              pimaIndians14,pimaIndians15,pimaIndians16,pimaIndians17,
              pimaIndians18,pimaIndians19,pimaIndians20,pimaIndians21,
              pimaIndians22,pimaIndians23,pimaIndians24,pimaIndians25,
              pimaIndians26,pimaIndians27,pimaIndians28
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(pimaIndians2),byrow=FALSE)),
                     pimaIndians_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/pimaIndians_N=28.csv", row.names = FALSE)
  
  
  #106-----------------------------possum--------------------
  #Assign a name to the data set   
  possum_data<- possum
  #Get the last column of the data set 
  possum_dataLast <- getLastCol(possum_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(possum_data)
  #Remove the last column of the data set 
  possum_data <-  removeLastCol(possum_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("possum", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(possum_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(possum2,possum3,possum4,possum5,
              possum6,possum7,possum8,possum9,
              possum10
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(possum2),byrow=FALSE)),
                     possum_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/possum_N=10.csv", row.names = FALSE)
  
  
  
  #108-----------------------------ppantenatal--------------------
  #Assign a name to the data set   
  ppantenatal_data<- PP_Ante_Natal_Care_District
  #Get the last column of the data set 
  ppantenatal_dataLast <- getLastCol(ppantenatal_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ppantenatal_data)
  #Remove the last column of the data set 
  ppantenatal_data <-  removeLastCol(ppantenatal_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ppantenatal", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ppantenatal_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ppantenatal2,ppantenatal3,ppantenatal4,ppantenatal5,
              ppantenatal6,ppantenatal7,ppantenatal8,ppantenatal9,
              ppantenatal10,ppantenatal11,ppantenatal12,ppantenatal13,
              ppantenatal14,ppantenatal15,ppantenatal16,ppantenatal17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ppantenatal2),byrow=FALSE)),
                     ppantenatal_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ppantenatal_N=17.csv", row.names = FALSE)
  
  
  
  
  
  #109-----------------------------produc--------------------
  #Assign a name to the data set   
  produc_data<- Produc
  #Get the last column of the data set 
  produc_dataLast <- getLastCol(produc_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(produc_data)
  #Remove the last column of the data set 
  produc_data <-  removeLastCol(produc_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("produc", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(produc_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(produc2,produc3,produc4,produc5,
              produc6,produc7,produc8,produc9,
              produc10,produc11,produc12,produc13,
              produc14,produc15,produc16,produc17,
              produc18,produc19,produc20,produc21,
              produc22,produc23,produc24,produc25,
              produc26,produc27,produc28,produc29
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(produc2),byrow=FALSE)),
                     produc_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/produc_N=29.csv", row.names = FALSE)
  
  
  #109-----------------------------proxphalanTest--------------------
  #Assign a name to the data set   
  proxphalanTest_data<- ProximalPhalanxOutlineAgeGroup_TEST
  #Get the last column of the data set 
  proxphalanTest_dataLast <- getLastCol(proxphalanTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(proxphalanTest_data)
  #Remove the last column of the data set 
  proxphalanTest_data <-  removeLastCol(proxphalanTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("proxphalanTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(proxphalanTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(proxphalanTest2,proxphalanTest3,proxphalanTest4,proxphalanTest5,
              proxphalanTest6,proxphalanTest7,proxphalanTest8,proxphalanTest9,
              proxphalanTest10,proxphalanTest11,proxphalanTest12,proxphalanTest13,
              proxphalanTest14
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(proxphalanTest2),byrow=FALSE)),
                     proxphalanTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/proxphalanTest_N=14.csv", row.names = FALSE)
  
  
  
  #110-----------------------------proxphalanTrain--------------------
  #Assign a name to the data set   
  proxphalanTrain_data<- ProximalPhalanxOutlineAgeGroup_TRAIN
  #Get the last column of the data set 
  proxphalanTrain_dataLast <- getLastCol(proxphalanTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(proxphalanTrain_data)
  #Remove the last column of the data set 
  proxphalanTrain_data <-  removeLastCol(proxphalanTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("proxphalanTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(proxphalanTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(proxphalanTrain2,proxphalanTrain3,proxphalanTrain4,proxphalanTrain5,
              proxphalanTrain6,proxphalanTrain7,proxphalanTrain8,proxphalanTrain9,
              proxphalanTrain10,proxphalanTrain11,proxphalanTrain12,proxphalanTrain13,
              proxphalanTrain14,proxphalanTrain15,proxphalanTrain16,proxphalanTrain17,
              proxphalanTrain18,proxphalanTrain19,proxphalanTrain20
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(proxphalanTrain2),byrow=FALSE)),
                     proxphalanTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/proxphalanTrain_N=20.csv", row.names = FALSE)
  
  
  
  
  #111-----------------------------proxphalanTWTest--------------------
  #Assign a name to the data set   
  proxphalanTWTest_data<- ProximalPhalanxTW_TEST
  #Get the last column of the data set 
  proxphalanTWTest_dataLast <- getLastCol(proxphalanTWTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(proxphalanTWTest_data)
  #Remove the last column of the data set 
  proxphalanTWTest_data <-  removeLastCol(proxphalanTWTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("proxphalanTWTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(proxphalanTWTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(proxphalanTWTest2,proxphalanTWTest3,proxphalanTWTest4,proxphalanTWTest5,
              proxphalanTWTest6,proxphalanTWTest7,proxphalanTWTest8,proxphalanTWTest9,
              proxphalanTWTest10,proxphalanTWTest11,proxphalanTWTest12,proxphalanTWTest13,
              proxphalanTWTest14,proxphalanTWTest15,proxphalanTWTest16,proxphalanTWTest17,
              proxphalanTWTest18,proxphalanTWTest19,proxphalanTWTest20
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(proxphalanTWTest2),byrow=FALSE)),
                     proxphalanTWTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/proxphalanTWTest_N=20.csv", row.names = FALSE)
  
  
  
  #111-----------------------------proxphalanTWTrain--------------------
  #Assign a name to the data set   
  proxphalanTWTrain_data<- ProximalPhalanxTW_TRAIN
  #Get the last column of the data set 
  proxphalanTWTrain_dataLast <- getLastCol(proxphalanTWTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(proxphalanTWTrain_data)
  #Remove the last column of the data set 
  proxphalanTWTrain_data <-  removeLastCol(proxphalanTWTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("proxphalanTWTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(proxphalanTWTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(proxphalanTWTrain2,proxphalanTWTrain3,proxphalanTWTrain4,proxphalanTWTrain5,
              proxphalanTWTrain6,proxphalanTWTrain7,proxphalanTWTrain8,proxphalanTWTrain9,
              proxphalanTWTrain10,proxphalanTWTrain11,proxphalanTWTrain12,proxphalanTWTrain13,
              proxphalanTWTrain14
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(proxphalanTWTrain2),byrow=FALSE)),
                     proxphalanTWTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/proxphalanTWTrain_N=14.csv", row.names = FALSE)
  
  
  
  #111-----------------------------qqdeliverycare--------------------
  #Assign a name to the data set   
  qqdeliverycare_data<- QQ_Delivery_Care_District
  #Get the last column of the data set 
  qqdeliverycare_dataLast <- getLastCol(qqdeliverycare_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(qqdeliverycare_data)
  #Remove the last column of the data set 
  qqdeliverycare_data <-  removeLastCol(qqdeliverycare_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("qqdeliverycare", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(qqdeliverycare_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(qqdeliverycare2,qqdeliverycare3,qqdeliverycare4,qqdeliverycare5,
              qqdeliverycare6,qqdeliverycare7,qqdeliverycare8,qqdeliverycare9,
              qqdeliverycare10,qqdeliverycare11,qqdeliverycare12,qqdeliverycare13,
              qqdeliverycare14,qqdeliverycare15,qqdeliverycare16,
              qqdeliverycare17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(qqdeliverycare2),byrow=FALSE)),
                     qqdeliverycare_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/qqdeliverycare_N=17.csv", row.names = FALSE)
 
  
  #113-----------------------------qtumprice--------------------
  #Assign a name to the data set   
  qtumprice_data<- qtum_price
  #Get the last column of the data set 
  qtumprice_dataLast <- getLastCol(qtumprice_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(qtumprice_data)
  #Remove the last column of the data set 
  qtumprice_data <-  removeLastCol(qtumprice_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("qtumprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(qtumprice_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(qtumprice2,qtumprice3,qtumprice4,qtumprice5,
              qtumprice6,qtumprice7,qtumprice8,qtumprice9,
              qtumprice10,qtumprice11,qtumprice12,qtumprice13
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(qtumprice2),byrow=FALSE)),
                     qtumprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/qtumprice_N=13.csv", row.names = FALSE)
  
  
  #113-----------------------------qtumprice2--------------------
  #Assign a name to the data set   
  qtumprice2_data<- qtum_price2
  #Get the last column of the data set 
  qtumprice2_dataLast <- getLastCol(qtumprice2_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(qtumprice2_data)
  #Remove the last column of the data set 
  qtumprice2_data <-  removeLastCol(qtumprice2_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("qtumprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(qtumprice2_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(qtumprice2,qtumprice3,qtumprice4,qtumprice5,
              qtumprice6,qtumprice7,qtumprice8,qtumprice9,
              qtumprice10,qtumprice11,qtumprice12,qtumprice13
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(qtumprice2),byrow=FALSE)),
                     qtumprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/qtumprice2_N=13.csv", row.names = FALSE)
  
  
  
  
  #114-----------------------------rrpost--------------------
  #Assign a name to the data set   
  rrpost_data<- RR_Post_Natal_Care_District
  
  #Get the last column of the data set 
  rrpost_dataLast <- getLastCol(rrpost_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(rrpost_data)
  #Remove the last column of the data set 
  rrpost_data <-  removeLastCol(rrpost_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("rrpost", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(rrpost_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(rrpost2,rrpost3,rrpost4,rrpost5,
              rrpost6,rrpost7,rrpost8,rrpost9,
              rrpost10,rrpost11,rrpost12,rrpost13,
              rrpost14,rrpost15,rrpost16,rrpost17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(rrpost2),byrow=FALSE)),
                     rrpost_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/rrpost_N=17.csv", row.names = FALSE)
  
  
  
  
  #115-----------------------------salary--------------------
  #Assign a name to the data set   
  salary_data<- Salary
  
  #Get the last column of the data set 
  salary_dataLast <- getLastCol(salary_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(salary_data)
  #Remove the last column of the data set 
  salary_data <-  removeLastCol(salary_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("salary", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(salary_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(salary2,salary3,salary4,salary5,
              salary6,salary7,salary8,salary9,
              salary10,salary11,salary12,salary13,
              salary14,salary15
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(salary2),byrow=FALSE)),
                     salary_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/salary_N=15.csv", row.names = FALSE)
  
  
  
  
  
  #116-----------------------------seed--------------------
  #Assign a name to the data set   
  seed_data<- seeds
  
  #Get the last column of the data set 
  seed_dataLast <- getLastCol(seed_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(seed_data)
  #Remove the last column of the data set 
  seed_data <-  removeLastCol(seed_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("seed", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(seed_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(seed2,seed3,seed4,seed5,
              seed6,seed7,seed8,seed9,
              seed10,seed11,seed12,seed13,
              seed14
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(seed2),byrow=FALSE)),
                     seed_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/seeds_N=14.csv", row.names = FALSE)
  
  
  #117-----------------------------seropositive--------------------
  #Assign a name to the data set   
  seropositive_data<- seropositive
  
  #Get the last column of the data set 
  seropositive_dataLast <- getLastCol(seropositive_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(seropositive_data)
  #Remove the last column of the data set 
  seropositive_data <-  removeLastCol(seropositive_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("seropositive", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(seropositive_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(seropositive2,seropositive3,seropositive4,seropositive5,
              seropositive6,seropositive7,seropositive8,seropositive9,
              seropositive10,seropositive11
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(seropositive2),byrow=FALSE)),
                     seropositive_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/seropositives_N=11.csv", row.names = FALSE)
  
  
  
  #118-----------------------------sitka--------------------
  #Assign a name to the data set   
  sitka_data<- Sitka
  #Get the last column of the data set 
  sitka_dataLast <- getLastCol(sitka_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(sitka_data)
  #Remove the last column of the data set 
  sitka_data <-  removeLastCol(sitka_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("sitka", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(sitka_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(sitka2,sitka3,sitka4,sitka5,
              sitka6,sitka7,sitka8,sitka9,
              sitka10,sitka11,sitka12,sitka13,sitka14,sitka15,
              sitka16,sitka17,sitka18,sitka19,
              sitka20
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(sitka2),byrow=FALSE)),
                     sitka_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/sitkas_N=20.csv", row.names = FALSE)
  
  
  
  
  #119-----------------------------sitka89--------------------
  #Assign a name to the data set   
  sitka89_data<- Sitka89
  #Get the last column of the data set 
  sitka89_dataLast <- getLastCol(sitka89_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(sitka89_data)
  #Remove the last column of the data set 
  sitka89_data <-  removeLastCol(sitka89_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("sitka89", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(sitka89_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(sitka892,sitka893,sitka894,sitka895,
              sitka896,sitka897,sitka898,sitka899,
              sitka8910,sitka8911,sitka8912,sitka8913,sitka8914,sitka8915,
              sitka8916,sitka8917,sitka8918,sitka8919,
              sitka8920,sitka8921,sitka8922,sitka8923,sitka8924,
              sitka8925
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(sitka892),byrow=FALSE)),
                     sitka89_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/sitka89s_N=25.csv", row.names = FALSE)
  
  
  #120-----------------------------sonyAIBoroTest--------------------
  #Assign a name to the data set   
  sonyAIboroTest_data<- SonyAIBORobotSurface_TEST
  #Get the last column of the data set 
  sonyAIboroTest_dataLast <- getLastCol(sonyAIboroTest_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(sonyAIboroTest_data)
  #Remove the last column of the data set 
  sonyAIboroTest_data <-  removeLastCol(sonyAIboroTest_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("sonyAIboroTest", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(sonyAIboroTest_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(sonyAIboroTest2,sonyAIboroTest3,sonyAIboroTest4,sonyAIboroTest5,
              sonyAIboroTest6,sonyAIboroTest7,sonyAIboroTest8,sonyAIboroTest9,
              sonyAIboroTest10,sonyAIboroTest11,sonyAIboroTest12,sonyAIboroTest13,sonyAIboroTest14,sonyAIboroTest15,
              sonyAIboroTest16,sonyAIboroTest17,sonyAIboroTest18,sonyAIboroTest19,
              sonyAIboroTest20,sonyAIboroTest21,sonyAIboroTest22,sonyAIboroTest23,sonyAIboroTest24,
              sonyAIboroTest25
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(sonyAIboroTest2),byrow=FALSE)),
                     sonyAIboroTest_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/sonyAIboroTests_N=25.csv", row.names = FALSE)
  
  
  
  #119-----------------------------soybeanbackup--------------------
  #Assign a name to the data set   
  soybeanbackup_data<- `Soybean backup-large Clean`
  #Get the last column of the data set 
  soybeanbackup_dataLast <- getLastCol(soybeanbackup_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(soybeanbackup_data)
  #Remove the last column of the data set 
  soybeanbackup_data <-  removeLastCol(soybeanbackup_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("soybeanbackup", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(soybeanbackup_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(soybeanbackup2,soybeanbackup3,soybeanbackup4,soybeanbackup5,
              soybeanbackup6,soybeanbackup7,soybeanbackup8,soybeanbackup9,
              soybeanbackup10,soybeanbackup11,soybeanbackup12,soybeanbackup13,
              soybeanbackup14,soybeanbackup15,
              soybeanbackup16,soybeanbackup17,soybeanbackup18
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(soybeanbackup2),byrow=FALSE)),
                     soybeanbackup_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/soybeanbackups_N=18.csv", row.names = FALSE)
  
  
  
  
  #121-----------------------------sp1factor--------------------
  #Assign a name to the data set   
  sp1factor_data<- `sp1-factor-binding-sites-on-chromosome1_numeric sequence`
  #Get the last column of the data set 
  sp1factor_dataLast <- getLastCol(sp1factor_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(sp1factor_data)
  #Remove the last column of the data set 
  sp1factor_data <-  removeLastCol(sp1factor_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("sp1factor", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(sp1factor_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(sp1factor2,sp1factor3,sp1factor4,sp1factor5,
              sp1factor6,sp1factor7,sp1factor8,sp1factor9,
              sp1factor10,sp1factor11,sp1factor12,sp1factor13,
              sp1factor14,sp1factor15,
              sp1factor16,sp1factor17,sp1factor18,
              sp1factor19,sp1factor20,sp1factor21,sp1factor22,
              sp1factor23,sp1factor24,sp1factor25,sp1factor26,
              sp1factor27,sp1factor28,sp1factor29,sp1factor30,
              sp1factor31,sp1factor32,sp1factor33,sp1factor34,sp1factor35,
              sp1factor36,sp1factor37,sp1factor38,sp1factor39,sp1factor40,
              sp1factor41,sp1factor42,sp1factor43,sp1factor44,sp1factor45,
              sp1factor46,sp1factor47,sp1factor48,sp1factor49
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(sp1factor2),byrow=FALSE)),
                     sp1factor_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/sp1factors_N=49.csv", row.names = FALSE)
  
  
  
  #122-----------------------------spruce--------------------
  #Assign a name to the data set   
  spruce_data<- spruce
  #Get the last column of the data set 
  spruce_dataLast <- getLastCol(spruce_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(spruce_data)
  #Remove the last column of the data set 
  spruce_data <-  removeLastCol(spruce_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("spruce", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(spruce_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(spruce2,spruce3,spruce4,spruce5,
              spruce6,spruce7,spruce8,spruce9,
              spruce10,spruce11,spruce12,spruce13,
              spruce14,spruce15,
              spruce16,spruce17,spruce18,
              spruce19,spruce20,spruce21,spruce22,
              spruce23,spruce24,spruce25,spruce26,
              spruce27,spruce28,spruce29,spruce30,
              spruce31,spruce32
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(spruce2),byrow=FALSE)),
                     spruce_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/spruces_N=32.csv", row.names = FALSE)
  
  #122-----------------------------ssjanani--------------------
  #Assign a name to the data set   
  ssjanani_data<- SS_Janani_Suraksha_Yojana_JSY_District
  #Get the last column of the data set 
  ssjanani_dataLast <- getLastCol(ssjanani_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ssjanani_data)
  #Remove the last column of the data set 
  ssjanani_data <-  removeLastCol(ssjanani_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ssjanani", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ssjanani_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ssjanani2,ssjanani3,ssjanani4,ssjanani5,
              ssjanani6,ssjanani7,ssjanani8,ssjanani9,
              ssjanani10,ssjanani11,ssjanani12,ssjanani13,
              ssjanani14,ssjanani15,
              ssjanani16,ssjanani17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ssjanani2),byrow=FALSE)),
                     ssjanani_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ssjananis_N=17.csv", row.names = FALSE)
  
  
  #122-----------------------------wordsynonyms--------------------
  #Assign a name to the data set   
  wordsynonyms_data<- WordsSynonyms_TEST
  #Get the last column of the data set 
  wordsynonyms_dataLast <- getLastCol(wordsynonyms_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wordsynonyms_data)
  #Remove the last column of the data set 
  wordsynonyms_data <-  removeLastCol(wordsynonyms_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wordsynonyms", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wordsynonyms_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wordsynonyms2,wordsynonyms3,wordsynonyms4,wordsynonyms5,
              wordsynonyms6,wordsynonyms7,wordsynonyms8,wordsynonyms9,
              wordsynonyms10,wordsynonyms11,wordsynonyms12,wordsynonyms13,
              wordsynonyms14,wordsynonyms15,
              wordsynonyms16,wordsynonyms17,wordsynonyms18,
              wordsynonyms19,wordsynonyms20,
              wordsynonyms21,wordsynonyms22,wordsynonyms23,
              wordsynonyms24,wordsynonyms25
              
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wordsynonyms2),byrow=FALSE)),
                     wordsynonyms_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wordsynonymss_N=25.csv", row.names = FALSE)
  
  
  
  
  #122-----------------------------wwbirthreg--------------------
  #Assign a name to the data set   
  wwbirthreg_data<- WW_Birth_Registration_District
  #Get the last column of the data set 
  wwbirthreg_dataLast <- getLastCol(wwbirthreg_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(wwbirthreg_data)
  #Remove the last column of the data set 
  wwbirthreg_data <-  removeLastCol(wwbirthreg_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("wwbirthreg", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(wwbirthreg_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(wwbirthreg2,wwbirthreg3,wwbirthreg4,wwbirthreg5,
              wwbirthreg6,wwbirthreg7,wwbirthreg8,wwbirthreg9,
              wwbirthreg10,wwbirthreg11,wwbirthreg12,wwbirthreg13,
              wwbirthreg14,wwbirthreg15,
              wwbirthreg16,wwbirthreg17
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(wwbirthreg2),byrow=FALSE)),
                     wwbirthreg_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/wwbirthregs_N=25.csv", row.names = FALSE)

  
  
  #128-----------------------------xapiedu--------------------
  #Assign a name to the data set   
 xapiedu_data<- `xAPI-Edu`
  #Get the last column of the data set 
 xapiedu_dataLast <- getLastCol(xapiedu_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(xapiedu_data)
  #Remove the last column of the data set 
 xapiedu_data <-  removeLastCol(xapiedu_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("xapiedu", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(xapiedu_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(xapiedu2,xapiedu3,xapiedu4,xapiedu5,
             xapiedu6,xapiedu7,xapiedu8,xapiedu9,
             xapiedu10,xapiedu11,xapiedu12,xapiedu13,
             xapiedu14,xapiedu15,
             xapiedu16,xapiedu17,xapiedu18,xapiedu19,
             xapiedu20,xapiedu21,xapiedu22
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(xapiedu2),byrow=FALSE)),
                    xapiedu_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/xapiedus_N=22.csv", row.names = FALSE)
  
    
  
  #128-----------------------------zoo--------------------
  #Assign a name to the data set   
  zoo_data<- zoo
  #Get the last column of the data set 
  zoo_dataLast <- getLastCol(zoo_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(zoo_data)
  #Remove the last column of the data set 
  zoo_data <-  removeLastCol(zoo_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("zoo", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(zoo_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(zoo2,zoo3,zoo4,zoo5,
              zoo6,zoo7,zoo8,zoo9,
              zoo10
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(zoo2),byrow=FALSE)),
                     zoo_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/zoos_N=10.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------bitconnect--------------------
  #Assign a name to the data set   
  bitconnect_data<- bitconnect_price
  #Get the last column of the data set 
  bitconnect_dataLast <- getLastCol(bitconnect_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(bitconnect_data)
  #Remove the last column of the data set 
  bitconnect_data <-  removeLastCol(bitconnect_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("bitconnect", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(bitconnect_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(bitconnect2,bitconnect3,bitconnect4,bitconnect5,
              bitconnect6,bitconnect7,bitconnect8,bitconnect9,
              bitconnect10,bitconnect11,bitconnect12,bitconnect13,
              bitconnect14,bitconnect15,bitconnect16,bitconnect17
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(bitconnect2),byrow=FALSE)),
                     bitconnect_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/bitconnects_N=17.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------dashprice--------------------
  #Assign a name to the data set   
  dashprice_data<- dash_price
  #Get the last column of the data set 
  dashprice_dataLast <- getLastCol(dashprice_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(dashprice_data)
  #Remove the last column of the data set 
  dashprice_data <-  removeLastCol(dashprice_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("dashprice", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(dashprice_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(dashprice2,dashprice3,dashprice4,dashprice5,
              dashprice6,dashprice7,dashprice8,dashprice9,
              dashprice10,dashprice11,dashprice12,dashprice13,
              dashprice14,dashprice15,dashprice16,dashprice17,
              dashprice18,dashprice19,dashprice20,dashprice21,
              dashprice22,dashprice23,dashprice24,dashprice25,
              dashprice26,dashprice27,dashprice28,dashprice29,
              dashprice30,dashprice31,dashprice32,dashprice33,
              dashprice34,dashprice35,dashprice36,dashprice37
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(dashprice2),byrow=FALSE)),
                     dashprice_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/dashprices_N=37.csv", row.names = FALSE)
  

  
  
  
  #128-----------------------------ethereumdataset--------------------
  #Assign a name to the data set   
  ethereumdataset_data<- ethereum_dataset
  #Get the last column of the data set 
  ethereumdataset_dataLast <- getLastCol(ethereumdataset_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(ethereumdataset_data)
  #Remove the last column of the data set 
  ethereumdataset_data <-  removeLastCol(ethereumdataset_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("ethereumdataset", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(ethereumdataset_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(ethereumdataset2,ethereumdataset3,ethereumdataset4,ethereumdataset5,
              ethereumdataset6,ethereumdataset7,ethereumdataset8,ethereumdataset9,
              ethereumdataset10,ethereumdataset11,ethereumdataset12,ethereumdataset13,
              ethereumdataset14,ethereumdataset15,ethereumdataset16,ethereumdataset17,
              ethereumdataset18,ethereumdataset19,ethereumdataset20,ethereumdataset21,
              ethereumdataset22,ethereumdataset23,ethereumdataset24,ethereumdataset25,
              ethereumdataset26,ethereumdataset27,ethereumdataset28,ethereumdataset29
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(ethereumdataset2),byrow=FALSE)),
                     ethereumdataset_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/ethereumdatasets_N2=29.csv", row.names = FALSE)
 
  
  
  #128-----------------------------faceallTrain--------------------
  #Assign a name to the data set   
  faceallTrain_data<- FaceAll_TRAIN
  #Get the last column of the data set 
  faceallTrain_dataLast <- getLastCol(faceallTrain_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(faceallTrain_data)
  #Remove the last column of the data set 
  faceallTrain_data <-  removeLastCol(faceallTrain_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("faceallTrain", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(faceallTrain_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(faceallTrain2,faceallTrain3,faceallTrain4,faceallTrain5,
              faceallTrain6,faceallTrain7,faceallTrain8,faceallTrain9,
              faceallTrain10,faceallTrain11,faceallTrain12,faceallTrain13,
              faceallTrain14,faceallTrain15,faceallTrain16,faceallTrain17,
              faceallTrain18,faceallTrain19,faceallTrain20,faceallTrain21,
              faceallTrain22,faceallTrain23,faceallTrain24
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(faceallTrain2),byrow=FALSE)),
                     faceallTrain_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/faceallTrains_N=24.csv", row.names = FALSE)
  
   
  
  
  #128-----------------------------intair--------------------
  #Assign a name to the data set   
  intair_data<- IntlAir
  #Get the last column of the data set 
  intair_dataLast <- getLastCol(intair_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(intair_data)
  #Remove the last column of the data set 
  intair_data <-  removeLastCol(intair_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("intair", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(intair_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(intair2,intair3,intair4,intair5,
              intair6,intair7,intair8,intair9,
              intair10,intair11,intair12
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(intair2),byrow=FALSE)),
                     intair_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/intairs_N=12.csv", row.names = FALSE)
  
  
  
  #128-----------------------------italypwDemand--------------------
  #Assign a name to the data set   
  italypwDemand_data<- ItalyPowerDemand_TRAIN
  #Get the last column of the data set 
  italypwDemand_dataLast <- getLastCol(italypwDemand_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(italypwDemand_data)
  #Remove the last column of the data set 
  italypwDemand_data <-  removeLastCol(italypwDemand_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("italypwDemand", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(italypwDemand_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(italypwDemand2,italypwDemand3,italypwDemand4,italypwDemand5,
              italypwDemand6,italypwDemand7,italypwDemand8
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(italypwDemand2),byrow=FALSE)),
                     italypwDemand_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/italypwDemands_N=12.csv", row.names = FALSE)
  
  
  
  #128-----------------------------lupus--------------------
  #Assign a name to the data set   
  lupus_data<- lupus
  #Get the last column of the data set 
  lupus_dataLast <- getLastCol(lupus_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(lupus_data)
  #Remove the last column of the data set 
  lupus_data <-  removeLastCol(lupus_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("lupus", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(lupus_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(lupus2,lupus3,lupus4,lupus5,
              lupus6,lupus7,lupus8,lupus9
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(lupus2),byrow=FALSE)),
                     lupus_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/lupuss_N=9.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------noninvasiveT1Test--------------------
  #Assign a name to the data set   
  noninvasiveT1Test_data<- NonInvasiveFatalECG_Thorax1_TEST
  #Get the last column of the data set 
  noninvasiveT1Test_dataLast <- getLastCol(noninvasiveT1Test_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(noninvasiveT1Test_data)
  #Remove the last column of the data set 
  noninvasiveT1Test_data <-  removeLastCol(noninvasiveT1Test_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("noninvasiveT1Test", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(noninvasiveT1Test_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(noninvasiveT1Test2,noninvasiveT1Test3,noninvasiveT1Test4,noninvasiveT1Test5,
              noninvasiveT1Test6,noninvasiveT1Test7,noninvasiveT1Test8,noninvasiveT1Test9,
              noninvasiveT1Test10,noninvasiveT1Test11,noninvasiveT1Test12,noninvasiveT1Test13,
              noninvasiveT1Test14,noninvasiveT1Test15,noninvasiveT1Test16,noninvasiveT1Test17,
              noninvasiveT1Test18,noninvasiveT1Test19,noninvasiveT1Test20,noninvasiveT1Test21,
              noninvasiveT1Test22,noninvasiveT1Test23,noninvasiveT1Test24,noninvasiveT1Test25,
              noninvasiveT1Test26,noninvasiveT1Test27,noninvasiveT1Test28,noninvasiveT1Test29,
              noninvasiveT1Test30,noninvasiveT1Test31,noninvasiveT1Test32,noninvasiveT1Test33,
              noninvasiveT1Test34,noninvasiveT1Test35,noninvasiveT1Test36,noninvasiveT1Test37,
              noninvasiveT1Test38,noninvasiveT1Test39,noninvasiveT1Test40,noninvasiveT1Test41,
              noninvasiveT1Test42,noninvasiveT1Test43,noninvasiveT1Test44
      )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(noninvasiveT1Test2),byrow=FALSE)),
                     noninvasiveT1Test_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/noninvasiveT1Tests_N=44.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------noninvasiveT1Train--------------------
  #Assign a name to the data set   
  noninvasiveT1Train_data<- NonInvasiveFatalECG_Thorax1_TRAIN
  #Get the last column of the data set 
  noninvasiveT1Train_dataLast <- getLastCol(noninvasiveT1Train_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(noninvasiveT1Train_data)
  #Remove the last column of the data set 
  noninvasiveT1Train_data <-  removeLastCol(noninvasiveT1Train_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("noninvasiveT1Train", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(noninvasiveT1Train_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(noninvasiveT1Train2,noninvasiveT1Train3,noninvasiveT1Train4,noninvasiveT1Train5,
              noninvasiveT1Train6,noninvasiveT1Train7,noninvasiveT1Train8,noninvasiveT1Train9,
              noninvasiveT1Train10,noninvasiveT1Train11,noninvasiveT1Train12,noninvasiveT1Train13,
              noninvasiveT1Train14,noninvasiveT1Train15,noninvasiveT1Train16,noninvasiveT1Train17,
              noninvasiveT1Train18,noninvasiveT1Train19,noninvasiveT1Train20,noninvasiveT1Train21,
              noninvasiveT1Train22,noninvasiveT1Train23,noninvasiveT1Train24,noninvasiveT1Train25,
              noninvasiveT1Train26,noninvasiveT1Train27,noninvasiveT1Train28,noninvasiveT1Train29,
              noninvasiveT1Train30,noninvasiveT1Train31,noninvasiveT1Train32,noninvasiveT1Train33,
              noninvasiveT1Train34,noninvasiveT1Train35,noninvasiveT1Train36,noninvasiveT1Train37,
              noninvasiveT1Train38,noninvasiveT1Train39,noninvasiveT1Train40,noninvasiveT1Train41,
              noninvasiveT1Train42
      )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(noninvasiveT1Train2),byrow=FALSE)),
                     noninvasiveT1Train_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/noninvasiveT1Trains_N=42.csv", row.names = FALSE)
  
  
  
  
  
  #128-----------------------------noninvasiveT2Test--------------------
  #Assign a name to the data set   
  noninvasiveT2Test_data<- NonInvasiveFatalECG_Thorax2_TEST
  #Get the last column of the data set 
  noninvasiveT2Test_dataLast <- getLastCol(noninvasiveT2Test_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(noninvasiveT2Test_data)
  #Remove the last column of the data set 
  noninvasiveT2Test_data <-  removeLastCol(noninvasiveT2Test_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("noninvasiveT2Test", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(noninvasiveT2Test_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(noninvasiveT2Test2,noninvasiveT2Test3,noninvasiveT2Test4,noninvasiveT2Test5,
              noninvasiveT2Test6,noninvasiveT2Test7,noninvasiveT2Test8,noninvasiveT2Test9,
              noninvasiveT2Test10,noninvasiveT2Test11,noninvasiveT2Test12,noninvasiveT2Test13,
              noninvasiveT2Test14,noninvasiveT2Test15,noninvasiveT2Test16,noninvasiveT2Test17,
              noninvasiveT2Test18,noninvasiveT2Test19,noninvasiveT2Test20,noninvasiveT2Test21,
              noninvasiveT2Test22,noninvasiveT2Test23,noninvasiveT2Test24,noninvasiveT2Test25,
              noninvasiveT2Test26,noninvasiveT2Test27,noninvasiveT2Test28,noninvasiveT2Test29,
              noninvasiveT2Test30,noninvasiveT2Test31,noninvasiveT2Test32,noninvasiveT2Test33,
              noninvasiveT2Test34,noninvasiveT2Test35,noninvasiveT2Test36,noninvasiveT2Test37,
              noninvasiveT2Test38,noninvasiveT2Test39,noninvasiveT2Test40,noninvasiveT2Test41,
              noninvasiveT2Test42,noninvasiveT2Test43,noninvasiveT2Test44
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(noninvasiveT2Test2),byrow=FALSE)),
                     noninvasiveT2Test_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/noninvasiveT2Tests_N=44.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------noninvasiveT2Train--------------------
  #Assign a name to the data set   
  noninvasiveT2Train_data<- NonInvasiveFatalECG_Thorax2_TRAIN
  #Get the last column of the data set 
  noninvasiveT2Train_dataLast <- getLastCol(noninvasiveT2Train_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(noninvasiveT2Train_data)
  #Remove the last column of the data set 
  noninvasiveT2Train_data <-  removeLastCol(noninvasiveT2Train_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("noninvasiveT2Train", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(noninvasiveT2Train_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(noninvasiveT2Train2,noninvasiveT2Train3,noninvasiveT2Train4,noninvasiveT2Train5,
              noninvasiveT2Train6,noninvasiveT2Train7,noninvasiveT2Train8,noninvasiveT2Train9,
              noninvasiveT2Train10,noninvasiveT2Train11,noninvasiveT2Train12,noninvasiveT2Train13,
              noninvasiveT2Train14,noninvasiveT2Train15,noninvasiveT2Train16,noninvasiveT2Train17,
              noninvasiveT2Train18,noninvasiveT2Train19,noninvasiveT2Train20,noninvasiveT2Train21,
              noninvasiveT2Train22,noninvasiveT2Train23,noninvasiveT2Train24,noninvasiveT2Train25,
              noninvasiveT2Train26,noninvasiveT2Train27,noninvasiveT2Train28,noninvasiveT2Train29,
              noninvasiveT2Train30,noninvasiveT2Train31,noninvasiveT2Train32,noninvasiveT2Train33,
              noninvasiveT2Train34,noninvasiveT2Train35,noninvasiveT2Train36,noninvasiveT2Train37,
              noninvasiveT2Train38,noninvasiveT2Train39,noninvasiveT2Train40,noninvasiveT2Train41,
              noninvasiveT2Train42
              
            )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(noninvasiveT2Train2),byrow=FALSE)),
                     noninvasiveT2Train_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/noninvasiveT2Trains_N=42.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------pntsprd--------------------
  #Assign a name to the data set   
  pntsprd_data<- pntsprd
  #Get the last column of the data set 
  pntsprd_dataLast <- getLastCol(pntsprd_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(pntsprd_data)
  #Remove the last column of the data set 
  pntsprd_data <-  removeLastCol(pntsprd_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("pntsprd", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(pntsprd_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(pntsprd2,pntsprd3,pntsprd4,pntsprd5,
              pntsprd6,pntsprd7,pntsprd8,pntsprd9,
              pntsprd10,pntsprd11,pntsprd12,pntsprd13,
              pntsprd14,pntsprd15,pntsprd16,pntsprd17,
              pntsprd18,pntsprd19,pntsprd20,pntsprd21,
              pntsprd22,pntsprd23,pntsprd24
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(pntsprd2),byrow=FALSE)),
                     pntsprd_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/pntsprds_N=24.csv", row.names = FALSE)
  
  
  
#128-----------------------------tipjoke--------------------
  #Assign a name to the data set   
  tipjoke_data<- TipJoke
  #Get the last column of the data set 
  tipjoke_dataLast <- getLastCol(tipjoke_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(tipjoke_data)
  #Remove the last column of the data set 
  tipjoke_data <-  removeLastCol(tipjoke_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("tipjoke", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(tipjoke_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(tipjoke2,tipjoke3,tipjoke4,tipjoke5,
              tipjoke6
              
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(tipjoke2),byrow=FALSE)),
                     tipjoke_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/tipjokes_N=6.csv", row.names = FALSE)
  
  
  
  
  #128-----------------------------freeTwo--------------------
  #Assign a name to the data set   
freeTwo_data<- free2
  #Get the last column of the data set 
freeTwo_dataLast <- getLastCol(freeTwo_data)
  #Calculate the maximum number of iterations
  maxNum = calMaxNum(freeTwo_data)
  #Remove the last column of the data set 
freeTwo_data <-  removeLastCol(freeTwo_data)
  #Initialize the cluster and the cluster names kmeansCluster <-  list()
  kmeansCluster <-  list()
  datalistNames <- list()
  for (i in 2 : maxNum){
    set.seed(21134)
    datalistNames[[i]] <- paste("freeTwo", i, sep='')
    kmeansCluster[[i]] <- as.list(kmeans(freeTwo_data,center =i)$cluster)
    assign(datalistNames[[i]],kmeansCluster[[i]])
  }
  
  myList <- c(freeTwo2,freeTwo3,freeTwo4,freeTwo5,
            freeTwo6,freeTwo7,freeTwo8,freeTwo9,
            freeTwo10,freeTwo11,freeTwo12,freeTwo13,
            freeTwo14,freeTwo15,freeTwo16,freeTwo17,
            freeTwo18,freeTwo19,freeTwo20,freeTwo21
            
  )
  dataFinal <- cbind(as.data.frame(matrix(unlist(myList), 
                                          nrow=length(freeTwo2),byrow=FALSE)),
                   freeTwo_dataLast)
  
  write.csv(dataFinal, file = "data_for_Consensus/freeTwos_N=21.csv", row.names = FALSE)
  
  
  
  
    
  
  