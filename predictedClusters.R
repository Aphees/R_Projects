source("sourceFiles/initialPackages.R")
source("sourceFiles/readFiles.R")
source("sourceFiles/supportFunctions.R")

#-------------------------Machinery Historical----------------
# Assign a name to the data set   
MacHis_data <- `35111314-Orders Received for Machinery -- Historical Data(3) v1` 
#Remove the last column of the data set 
MacHis_data <-  removeLastCol(MacHis_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(MacHis_data)
gapstatistics(MacHis_data)
silhouette(MacHis_data)

#2.-----------------------------Aids2--------------------- 
#Assign a name to the data set   
Aids2_data <- `Aids 2`
Aids2_data <-  removeLastCol(Aids2_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(Aids2_data)
gapstatistics(Aids2_data)
silhouette(Aids2_data)




#3.-----------------------------authorship--------------------- 
#Assign a name to the data set   
authorship_data <- authorship
authorship_data <-  removeLastCol(authorship_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(authorship_data)
gapstatistics(authorship_data)
silhouette(authorship_data)


#4.-----------------------------autompg--------------------- 
#Assign a name to the data set   
autompg_data <- `auto-mpg`
autompg_data <-  removeLastCol(autompg_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(autompg_data)
gapstatistics(autompg_data)
silhouette(autompg_data)



#5.-----------------------------bankruptcy--------------------- 
#Assign a name to the data set   
bankruptcy_data <- bankruptcy
bankruptcy_data <-  removeLastCol(bankruptcy_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bankruptcy_data)
gapstatistics(bankruptcy_data)
silhouette(bankruptcy_data)



#6.-----------------------------bbhousehold--------------------- 
#Assign a name to the data set   
bbhousehold_data <- BB_Household_Characteristics_District
bbhousehold_data <-  removeLastCol(bbhousehold_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bbhousehold_data)
gapstatistics(bbhousehold_data)
silhouette(bbhousehold_data)


#6.-----------------------------beveridge--------------------- 
#Assign a name to the data set   
beveridge_data <- beveridge
beveridge_data <-  removeLastCol(beveridge_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(beveridge_data)
gapstatistics(beveridge_data)
silhouette(beveridge_data)


#7.-----------------------------beveridge--------------------- 
#Assign a name to the data set   
beveridge_data <- beveridge
beveridge_data <-  removeLastCol(beveridge_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(beveridge_data)
gapstatistics(beveridge_data)
silhouette(beveridge_data)



#8.-----------------------------bezdekIris--------------------- 
#Assign a name to the data set   
bezdekIris_data <- bezdekIrisClean
bezdekIris_data <-  removeLastCol(bezdekIris_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bezdekIris_data)
gapstatistics(bezdekIris_data)
silhouette(bezdekIris_data)



#9.-----------------------------birds--------------------- 
#Assign a name to the data set   
birds_data <- bird
birds_data <-  removeLastCol(birds_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(birds_data)
gapstatistics(birds_data)
silhouette(birds_data)



#10.-----------------------------birdswt--------------------- 
#Assign a name to the data set   
birdswt_data <- birthwt
birdswt_data <-  removeLastCol(birdswt_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(birdswt_data)
gapstatistics(birdswt_data)
silhouette(birdswt_data)



#11.-----------------------------bitcoincash--------------------- 
#Assign a name to the data set   
bitcoincash_data <- bitcoin_cash_price
bitcoincash_data <-  removeLastCol(bitcoincash_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bitcoincash_data)
gapstatistics(bitcoincash_data)
silhouette(bitcoincash_data)


#12.-----------------------------bitconnectprice--------------------- 
#Assign a name to the data set   
bitconnectprice_data <- bitcoin_cash_price
bitconnectprice_data <-  removeLastCol(bitconnectprice_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bitconnectprice_data)
gapstatistics(bitconnectprice_data)
silhouette(bitconnectprice_data)



#13.-----------------------------bladder--------------------- 
#Assign a name to the data set   
bladder_data <- bladder
bladder_data <-  removeLastCol(bladder_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(bladder_data)
gapstatistics(bladder_data)
silhouette(bladder_data)



#14.-----------------------------boston--------------------- 
#Assign a name to the data set   
boston_data <- Boston
boston_data <-  removeLastCol(boston_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(boston_data)
gapstatistics(boston_data)
silhouette(boston_data)



#15.-----------------------------breastTissue--------------------- 
#Assign a name to the data set   
breastTissue_data <- `BreastTissue2_Clean `
breastTissue_data <-  removeLastCol(breastTissue_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(breastTissue_data)
gapstatistics(breastTissue_data)
silhouette(breastTissue_data)



#16.-----------------------------caterpillars--------------------- 
#Assign a name to the data set   
caterpillars_data <- Caterpillars
caterpillars_data <-  removeLastCol(caterpillars_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(caterpillars_data)
gapstatistics(caterpillars_data)
silhouette(caterpillars_data)



#17.-----------------------------cbfTest--------------------- 
#Assign a name to the data set   
cbfTest_data <- CBF_TEST
cbfTest_data <-  removeLastCol(cbfTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(cbfTest_data)
gapstatistics(cbfTest_data)
silhouette(cbfTest_data)



#18.-----------------------------cement--------------------- 
#Assign a name to the data set   
cement_data <- cement
cement_data <-  removeLastCol(cement_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(cement_data)
gapstatistics(cement_data)
silhouette(cement_data)


#19.-----------------------------colorsurvey--------------------- 
#Assign a name to the data set   
colorsurvey_data <- `Color-survey-cnum-vhcm-lab-new 1`
colorsurvey_data <-  removeLastCol(colorsurvey_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(colorsurvey_data)
gapstatistics(colorsurvey_data)
silhouette(colorsurvey_data)



#20.-----------------------------column3C--------------------- 
#Assign a name to the data set   
column3C_data <- column_3C_weka
column3C_data <-  removeLastCol(column3C_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(column3C_data)
gapstatistics(column3C_data)
silhouette(column3C_data)



#21.-----------------------------confidence--------------------- 
#Assign a name to the data set   
confidence_data <- confidence
confidence_data <-  removeLastCol(confidence_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(confidence_data)
gapstatistics(confidence_data)
silhouette(confidence_data)


#22.-----------------------------creditscore--------------------- 
#Assign a name to the data set   
creditscore_data <- creditscore
creditscore_data <-  removeLastCol(creditscore_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(creditscore_data)
gapstatistics(creditscore_data)
silhouette(creditscore_data)



#23.-----------------------------dashprice--------------------- 
#Assign a name to the data set   
dashprice_data <- dash_price
dashprice_data <-  removeLastCol(dashprice_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(dashprice_data)
gapstatistics(dashprice_data)
silhouette(dashprice_data)



#24.-----------------------------fishcatch--------------------- 
#Assign a name to the data set   
fishcatch_data <- `datasets-numeric-fishcatch`
fishcatch_data <-  removeLastCol(fishcatch_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(fishcatch_data)
gapstatistics(fishcatch_data)
silhouette(fishcatch_data)



#25.-----------------------------depredations--------------------- 
#Assign a name to the data set   
depredations_data <- `datasets-numeric-fishcatch`
depredations_data <-  removeLastCol(depredations_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(depredations_data)
gapstatistics(depredations_data)
silhouette(depredations_data)


#26.-----------------------------dieotox--------------------- 
#Assign a name to the data set   
dieotox_data <- dietox
dieotox_data <-  removeLastCol(dieotox_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(dieotox_data)
gapstatistics(dieotox_data)
silhouette(dieotox_data)


#27.-----------------------------digglewool--------------------- 
#Assign a name to the data set   
digglewool_data <- DistalPhalanxOutlineAgeGroup_TEST
digglewool_data <-  removeLastCol(digglewool_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(digglewool_data)
gapstatistics(digglewool_data)
silhouette(digglewool_data)


#28.-----------------------------disPhaTrain--------------------- 
#Assign a name to the data set   
disPhaTrain_data <- DistalPhalanxOutlineAgeGroup_TRAIN
disPhaTrain_data <-  removeLastCol(disPhaTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(disPhaTrain_data)
gapstatistics(disPhaTrain_data)
silhouette(disPhaTrain_data)

#29.-----------------------------disPhaTest--------------------- 
#Assign a name to the data set   
disPhaTest_data <- DistalPhalanxOutlineAgeGroup_TRAIN
disPhaTest_data <-  removeLastCol(disPhaTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(disPhaTest_data)
gapstatistics(disPhaTest_data)
silhouette(disPhaTest_data)


#30.-----------------------------disPhaTWTest--------------------- 
#Assign a name to the data set   
disPhaTWTest_data <- DistalPhalanxTW_TEST
disPhaTWTest_data <-  removeLastCol(disPhaTWTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(disPhaTWTest_data)
gapstatistics(disPhaTWTest_data)
silhouette(disPhaTWTest_data)


#31.-----------------------------disPhaTWTrain--------------------- 
#Assign a name to the data set   
disPhaTWTrain_data <- DistalPhalanxTW_TRAIN
disPhaTWTrain_data <-  removeLastCol(disPhaTWTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(disPhaTWTrain_data)
gapstatistics(disPhaTWTrain_data)
silhouette(disPhaTWTrain_data)


#32.-----------------------------districtWise--------------------- 
#Assign a name to the data set   
districtWise_data <- `district wise rainfall normal`
districtWise_data <-  removeLastCol(districtWise_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(districtWise_data)
gapstatistics(districtWise_data)
silhouette(districtWise_data)

#33.-----------------------------ECG200Train--------------------- 
#Assign a name to the data set   
ECG200Train_data <- ECG200_TRAIN
ECG200Train_data <-  removeLastCol(ECG200Train_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ECG200Train_data)
gapstatistics(ECG200Train_data)
silhouette(ECG200Train_data)



#34.-----------------------------ECG500Train--------------------- 
#Assign a name to the data set   
ECG500Train_data <- ECG5000_TRAIN
ECG500Train_data <-  removeLastCol(ECG500Train_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ECG500Train_data)
gapstatistics(ECG500Train_data)
silhouette(ECG500Train_data)


#35.-----------------------------echomonths--------------------- 
#Assign a name to the data set   
echomonths_data <- echomonths
echomonths_data <-  removeLastCol(echomonths_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(echomonths_data)
gapstatistics(echomonths_data)
silhouette(echomonths_data)



#36.-----------------------------ecoli--------------------- 
#Assign a name to the data set   
ecoli_data <- ecoli
ecoli_data <-  removeLastCol(ecoli_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ecoli_data)
gapstatistics(ecoli_data)
silhouette(ecoli_data)


#37.-----------------------------eemarriage--------------------- 
#Assign a name to the data set   
eemarriage_data <- EE_Marriage_District
eemarriage_data <-  removeLastCol(eemarriage_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(eemarriage_data)
gapstatistics(eemarriage_data)
silhouette(eemarriage_data)


#38.-----------------------------enrollment--------------------- 
#Assign a name to the data set   
enrollment_data <- enrollment
enrollment_data <-  removeLastCol(enrollment_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(enrollment_data)
gapstatistics(enrollment_data)
silhouette(enrollment_data)




#39.-----------------------------epilepsy--------------------- 
#Assign a name to the data set   
epilepsy_data <- epilepsy
epilepsy_data <-  removeLastCol(epilepsy_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(epilepsy_data)
gapstatistics(epilepsy_data)
silhouette(epilepsy_data)


#40.-----------------------------ethereum--------------------- 
#Assign a name to the data set   
ethereum_data <- ethereum_dataset
ethereum_data <-  removeLastCol(ethereum_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ethereum_data)
gapstatistics(ethereum_data)
silhouette(ethereum_data)



#41.-----------------------------ethereumprice--------------------- 
#Assign a name to the data set   
ethereumprice_data <- ethereum_price
ethereumprice_data <-  removeLastCol(ethereumprice_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ethereumprice_data)
gapstatistics(ethereumprice_data)
silhouette(ethereumprice_data)


#42.-----------------------------ezanders--------------------- 
#Assign a name to the data set   
ezanders_data <- ezanders
ezanders_data <-  removeLastCol(ezanders_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ezanders_data)
gapstatistics(ezanders_data)
silhouette(ezanders_data)


#43.-----------------------------faceallTest--------------------- 
#Assign a name to the data set   
faceallTest_data <- FaceAll_TEST
faceallTest_data <-  removeLastCol(faceallTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(faceallTest_data)
gapstatistics(faceallTest_data)
silhouette(faceallTest_data)



#44.-----------------------------faceallTrain--------------------- 
#Assign a name to the data set   
faceallTrain_data <- FaceAll_TRAIN
faceallTrain_data <-  removeLastCol(faceallTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(faceallTrain_data)
gapstatistics(faceallTrain_data)
silhouette(faceallTrain_data)



#45.-----------------------------faceUCRTest--------------------- 
#Assign a name to the data set   
faceUCRTest_data <- FacesUCR_TEST
faceUCRTest_data <-  removeLastCol(faceUCRTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(faceUCRTest_data)
gapstatistics(faceUCRTest_data)
silhouette(faceUCRTest_data)


#46.-----------------------------faceUCRTrain--------------------- 
#Assign a name to the data set   
faceUCRTrain_data <- FacesUCR_TRAIN
faceUCRTrain_data <-  removeLastCol(faceUCRTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(faceUCRTrain_data)
gapstatistics(faceUCRTrain_data)
silhouette(faceUCRTrain_data)


#47.-----------------------------fgl--------------------- 
#Assign a name to the data set   
fgl_data <- fgl
fgl_data <-  removeLastCol(fgl_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(fgl_data)
gapstatistics(fgl_data)
silhouette(fgl_data)



#48.-----------------------------fishcatch--------------------- 
#Assign a name to the data set   
fishcatch_data <- fishcatch
fishcatch_data <-  removeLastCol(fishcatch_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(fishcatch_data)
gapstatistics(fishcatch_data)
silhouette(fishcatch_data)


#49.-----------------------------flightresponse--------------------- 
#Assign a name to the data set   
flightresponse_data <- FlightResponse
flightresponse_data <-  removeLastCol(flightresponse_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(flightresponse_data)
gapstatistics(flightresponse_data)
silhouette(flightresponse_data)



#50.-----------------------------flightresponse--------------------- 
#Assign a name to the data set   
free2_data <- free2
free2_data <-  removeLastCol(free2_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(free2_data)
gapstatistics(free2_data)
silhouette(free2_data)


#51.-----------------------------gesturePhase--------------------- 
#Assign a name to the data set   
gesturePhase_data <- `Gesture Phase Segmentation A2_Raw_Clean `
gesturePhase_data <-  removeLastCol(gesturePhase_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(gesturePhase_data)
gapstatistics(gesturePhase_data)
silhouette(gesturePhase_data)



#53.-----------------------------ggworkStatusD--------------------- 
#Assign a name to the data set   
ggworkStatusD_data <- GG_Work_Status_District
ggworkStatusD_data <-  removeLastCol(ggworkStatusD_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ggworkStatusD_data)
gapstatistics(ggworkStatusD_data)
silhouette(ggworkStatusD_data)



#54.-----------------------------glassID--------------------- 
#Assign a name to the data set   
glassID_data <- `Glass  Identification`
glassID_data <-  removeLastCol(glassID_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(glassID_data)
gapstatistics(glassID_data)
silhouette(glassID_data)


#55.-----------------------------globcses--------------------- 
#Assign a name to the data set   
globcses_data <- GLOBCSES.Final20170714
globcses_data <-  removeLastCol(globcses_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(globcses_data)
gapstatistics(globcses_data)
silhouette(globcses_data)


#56.-----------------------------grouse--------------------- 
#Assign a name to the data set   
grouse_data <- grouseticks
grouse_data <-  removeLastCol(grouse_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(grouse_data)
gapstatistics(grouse_data)
silhouette(grouse_data)



#57.-----------------------------grunfeld--------------------- 
#Assign a name to the data set   
grunfeld_data <- Grunfeld
grunfeld_data <-  removeLastCol(grunfeld_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(grunfeld_data)
gapstatistics(grunfeld_data)
silhouette(grunfeld_data)


#58.-----------------------------homerun--------------------- 
#Assign a name to the data set   
homerun_data <- `homerun (2)`
homerun_data <-  removeLastCol(homerun_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(homerun_data)
gapstatistics(homerun_data)
silhouette(homerun_data)



#59.-----------------------------housing--------------------- 
#Assign a name to the data set   
housing_data <- housing
housing_data <-  removeLastCol(housing_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(housing_data)
gapstatistics(housing_data)
silhouette(housing_data)




#60.-----------------------------imageseg--------------------- 
#Assign a name to the data set   
imageseg_data <- image_segmentation
imageseg_data <-  removeLastCol(imageseg_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(imageseg_data)
gapstatistics(imageseg_data)
silhouette(imageseg_data)



#61.-----------------------------insectWing--------------------- 
#Assign a name to the data set   
insectWing_data <- InsectWingbeatSound_TEST
insectWing_data <-  removeLastCol(insectWing_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(insectWing_data)
gapstatistics(insectWing_data)
silhouette(insectWing_data)


#62.-----------------------------intlAi--------------------- 
#Assign a name to the data set   
intlAi_data <- IntlAir
intlAi_data <-  removeLastCol(intlAi_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(intlAi_data)
gapstatistics(intlAi_data)
silhouette(intlAi_data)



#63.-----------------------------iotaPrice--------------------- 
#Assign a name to the data set   
iotaPrice_data <- iota_price
iotaPrice_data <-  removeLastCol(iotaPrice_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(iotaPrice_data)
gapstatistics(iotaPrice_data)
silhouette(iotaPrice_data)


#64.-----------------------------italypower--------------------- 
#Assign a name to the data set   
italypower_data <- ItalyPowerDemand_TRAIN
italypower_data <-  removeLastCol(italypower_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(italypower_data)
gapstatistics(italypower_data)
silhouette(italypower_data)




#66.-----------------------------kddelnino--------------------- 
#Assign a name to the data set   
kddelnino_data <- `kdd_el_nino-small`
kddelnino_data <-  removeLastCol(kddelnino_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(kddelnino_data)
gapstatistics(kddelnino_data)
silhouette(kddelnino_data)



#66.-----------------------------leafshape--------------------- 
#Assign a name to the data set   
leafshape_data <- leafshape
leafshape_data <-  removeLastCol(leafshape_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(leafshape_data)
gapstatistics(leafshape_data)
silhouette(leafshape_data)


#67.-----------------------------leafshape--------------------- 
#Assign a name to the data set   
leafshape_data <- leafshape
leafshape_data <-  removeLastCol(leafshape_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(leafshape_data)
gapstatistics(leafshape_data)
silhouette(leafshape_data)



#68.-----------------------------lob--------------------- 
#Assign a name to the data set   
lob_data <- LoBD
lob_data <-  removeLastCol(lob_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(lob_data)
gapstatistics(lob_data)
silhouette(lob_data)


#69.-----------------------------lupus--------------------- 
#Assign a name to the data set   
lupus_data <- lupus
lupus_data <-  removeLastCol(lupus_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(lupus_data)
gapstatistics(lupus_data)
silhouette(lupus_data)


#70.-----------------------------macr--------------------- 
#Assign a name to the data set   
macr_data <- macro
macr_data <-  removeLastCol(macr_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(macr_data)
gapstatistics(macr_data)
silhouette(macr_data)



#71.-----------------------------malfun--------------------- 
#Assign a name to the data set   
malfun_data <- `Malaria Functional Clean`
malfun_data <-  removeLastCol(malfun_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(malfun_data)
gapstatistics(malfun_data)
silhouette(malfun_data)


#72.-----------------------------manag--------------------- 
#Assign a name to the data set   
manag_data <- Manager
manag_data <-  removeLastCol(manag_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(manag_data)
gapstatistics(manag_data)
silhouette(manag_data)


#73.-----------------------------mela--------------------- 
#Assign a name to the data set   
mela_data <- Melanoma
mela_data <-  removeLastCol(mela_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(mela_data)
gapstatistics(mela_data)
silhouette(mela_data)


#74.-----------------------------metab--------------------- 
#Assign a name to the data set   
metab_data <- MetabolicRate
metab_data <-  removeLastCol(metab_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(metab_data)
gapstatistics(metab_data)
silhouette(metab_data)


#75.-----------------------------micep--------------------- 
#Assign a name to the data set   
micep_data <- `Mice P Data_Cortex_Nuclear-2`
micep_data <-  removeLastCol(micep_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(micep_data)
gapstatistics(micep_data)
silhouette(micep_data)


#75.-----------------------------midTest--------------------- 
#Assign a name to the data set   
midTest_data <- MiddlePhalanxOutlineAgeGroup_TEST
midTest_data <-  removeLastCol(midTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(midTest_data)
gapstatistics(midTest_data)
silhouette(midTest_data)


#76.-----------------------------midTWTest--------------------- 
#Assign a name to the data set   
midTWTest_data <- MiddlePhalanxTW_TEST
midTWTest_data <-  removeLastCol(midTWTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(midTWTest_data)
gapstatistics(midTWTest_data)
silhouette(midTWTest_data)


#77.-----------------------------midTWTrain--------------------- 
#Assign a name to the data set   
midTWTrain_data <- MiddlePhalanxTW_TRAIN
midTWTrain_data <-  removeLastCol(midTWTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(midTWTrain_data)
gapstatistics(midTWTrain_data)
silhouette(midTWTrain_data)


#78.-----------------------------moode--------------------- 
#Assign a name to the data set   
moode_data <- Mode
moode_data <-  removeLastCol(moode_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(moode_data)
gapstatistics(moode_data)
silhouette(moode_data)


#79.-----------------------------motest--------------------- 
#Assign a name to the data set   
motest_data <- MoteStrain_TEST
motest_data <-  removeLastCol(motest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(motest_data)
gapstatistics(motest_data)
silhouette(motest_data)



#80.-----------------------------movelib--------------------- 
#Assign a name to the data set   
movelib_data <- movement_libras_0_Clean.data
movelib_data <-  removeLastCol(movelib_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(movelib_data)
gapstatistics(movelib_data)
silhouette(movelib_data)


#81.-----------------------------move10lib--------------------- 
#Assign a name to the data set   
move10lib_data <- movement_libras_10_Clean
move10lib_data <-  removeLastCol(move10lib_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(move10lib_data)
gapstatistics(move10lib_data)
silhouette(move10lib_data)



#81.-----------------------------move8lib--------------------- 
#Assign a name to the data set   
move8lib_data <- movement_libras_8_Clean
move8lib_data <-  removeLastCol(move8lib_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(move8lib_data)
gapstatistics(move8lib_data)
silhouette(move8lib_data)



#83.-----------------------------nemprice--------------------- 
#Assign a name to the data set   
nemprice_data <- nem_price
nemprice_data <-  removeLastCol(nemprice_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nemprice_data)
gapstatistics(nemprice_data)
silhouette(nemprice_data)


#84.-----------------------------nnfamily--------------------- 
#Assign a name to the data set   
nnfamily_data <- NN_Family_Planning_Practices_Cmw_Aged_15_49_Years_District
nnfamily_data <-  removeLastCol(nnfamily_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nnfamily_data)
gapstatistics(nnfamily_data)
silhouette(nnfamily_data)


#85.-----------------------------nonInvasiveECGT1T--------------------- 
#Assign a name to the data set   
nonInvasiveT1T_data <- NonInvasiveFatalECG_Thorax1_TEST
nonInvasiveT1T_data <-  removeLastCol(nonInvasiveT1T_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nonInvasiveT1T_data)
gapstatistics(nonInvasiveT1T_data)
silhouette(nonInvasiveT1T_data)



#86.-----------------------------nonInvasiveECGT1Tr--------------------- 
#Assign a name to the data set   
nonInvasiveT1Tr_data <- NonInvasiveFatalECG_Thorax1_TRAIN
nonInvasiveT1Tr_data <-  removeLastCol(nonInvasiveT1Tr_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nonInvasiveT1Tr_data)
gapstatistics(nonInvasiveT1Tr_data)
silhouette(nonInvasiveT1Tr_data)


#87.-----------------------------nonInvasiveECGT2T--------------------- 
#Assign a name to the data set   
nonInvasiveECGT2T_data <- NonInvasiveFatalECG_Thorax2_TEST
nonInvasiveECGT2T_data <-  removeLastCol(nonInvasiveECGT2T_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nonInvasiveECGT2T_data)
gapstatistics(nonInvasiveECGT2T_data)
silhouette(nonInvasiveECGT2T_data)



#88.-----------------------------nonInvasiveECGT1Tr--------------------- 
#Assign a name to the data set   
nonInvasiveT2Tr_data <- NonInvasiveFatalECG_Thorax2_TRAIN
nonInvasiveT2Tr_data <-  removeLastCol(nonInvasiveT2Tr_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(nonInvasiveT2Tr_data)
gapstatistics(nonInvasiveT2Tr_data)
silhouette(nonInvasiveT2Tr_data)



#89.-----------------------------omisego--------------------- 
#Assign a name to the data set   
omisego_data <- omisego_price
omisego_data <-  removeLastCol(omisego_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(omisego_data)
gapstatistics(omisego_data)
silhouette(omisego_data)


#90.-----------------------------participation--------------------- 
#Assign a name to the data set   
participation_data <- Participation
participation_data <-  removeLastCol(participation_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(participation_data)
gapstatistics(participation_data)
silhouette(participation_data)



#91.-----------------------------patents--------------------- 
#Assign a name to the data set   
patents_data <- PatentsRD
patents_data <-  removeLastCol(patents_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(patents_data)
gapstatistics(patents_data)
silhouette(patents_data)



#92.-----------------------------pimaInd--------------------- 
#Assign a name to the data set   
pimaInd_data <- `pima-indians-diabetes_Clean`
pimaInd_data <-  removeLastCol(pimaInd_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(pimaInd_data)
gapstatistics(pimaInd_data)
silhouette(pimaInd_data)



#93.-----------------------------pnts--------------------- 
#Assign a name to the data set   
pnts_data <- pntsprd
pnts_data <-  removeLastCol(pnts_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(pnts_data)
gapstatistics(pnts_data)
silhouette(pnts_data)


#94.-----------------------------posu--------------------- 
#Assign a name to the data set   
posu_data <- possum
posu_data <-  removeLastCol(posu_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(posu_data)
gapstatistics(posu_data)
silhouette(posu_data)


#95.-----------------------------ppante--------------------- 
#Assign a name to the data set   
ppante_data <- PP_Ante_Natal_Care_District
ppante_data <-  removeLastCol(ppante_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ppante_data)
gapstatistics(ppante_data)
silhouette(ppante_data)


#96.-----------------------------prod--------------------- 
#Assign a name to the data set   
prod_data <- PP_Ante_Natal_Care_District
prod_data <-  removeLastCol(prod_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(prod_data)
gapstatistics(prod_data)
silhouette(prod_data)


#97.-----------------------------prophaloutTest--------------------- 
#Assign a name to the data set   
prophaloutTest_data <- ProximalPhalanxOutlineAgeGroup_TEST
prophaloutTest_data <-  removeLastCol(prophaloutTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(prophaloutTest_data)
gapstatistics(prophaloutTest_data)
silhouette(prophaloutTest_data)

#98.-----------------------------prophaloutTrain--------------------- 
#Assign a name to the data set   
prophaloutTrain_data <- ProximalPhalanxOutlineAgeGroup_TRAIN
prophaloutTrain_data <-  removeLastCol(prophaloutTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(prophaloutTrain_data)
gapstatistics(prophaloutTrain_data)
silhouette(prophaloutTrain_data)

#98.-----------------------------prophalTWTest--------------------- 
#Assign a name to the data set   
prophalTWTest_data <- ProximalPhalanxTW_TEST
prophalTWTest_data <-  removeLastCol(prophalTWTest_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(prophalTWTest_data)
gapstatistics(prophalTWTest_data)
silhouette(prophalTWTest_data)


#98.-----------------------------prophalTWTrain--------------------- 
#Assign a name to the data set   
prophalTWTrain_data <- ProximalPhalanxOutlineAgeGroup_TRAIN
prophalTWTrain_data <-  removeLastCol(prophalTWTrain_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(prophalTWTrain_data)
gapstatistics(prophalTWTrain_data)
silhouette(prophalTWTrain_data)



#98.-----------------------------qqdeliv--------------------- 
#Assign a name to the data set   
qqdeliv_data <- QQ_Delivery_Care_District
qqdeliv_data <-  removeLastCol(qqdeliv_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(qqdeliv_data)
gapstatistics(qqdeliv_data)
silhouette(qqdeliv_data)


#99.-----------------------------qtum--------------------- 
#Assign a name to the data set   
qtum_data <- qtum_price2
qtum_data <-  removeLastCol(qtum_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(qtum_data)
gapstatistics(qtum_data)
silhouette(qtum_data)


#99.-----------------------------rrpost--------------------- 
#Assign a name to the data set   
rrpost_data <- RR_Post_Natal_Care_District
rrpost_data <-  removeLastCol(rrpost_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(rrpost_data)
gapstatistics(rrpost_data)
silhouette(rrpost_data)



#99.-----------------------------salary--------------------- 
#Assign a name to the data set   
salary_data <- Salary
salary_data <-  removeLastCol(salary_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(salary_data)
gapstatistics(salary_data)
silhouette(salary_data)


#99.-----------------------------seeds--------------------- 
#Assign a name to the data set   
seeds_data <- seeds
seeds_data <-  removeLastCol(seeds_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(seeds_data)
gapstatistics(seeds_data)
silhouette(seeds_data)


#99.-----------------------------seropositive--------------------- 
#Assign a name to the data set   
seropositive_data <- seropositive
seropositive_data <-  removeLastCol(seropositive_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(seropositive_data)
gapstatistics(seropositive_data)
silhouette(seropositive_data)



#99.-----------------------------sitk--------------------- 
#Assign a name to the data set   
sitk_data <- Sitka
sitk_data <-  removeLastCol(sitk_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(sitk_data)
gapstatistics(sitk_data)
silhouette(sitk_data)

#99.-----------------------------sitk89--------------------- 
#Assign a name to the data set   
sitk89_data <- Sitka89
sitk89_data <-  removeLastCol(sitk89_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(sitk89_data)
gapstatistics(sitk89_data)
silhouette(sitk89_data)



#99.-----------------------------sonyAI--------------------- 
#Assign a name to the data set   
sonyAI_data <- SonyAIBORobotSurface_TEST
sonyAI_data <-  removeLastCol(sonyAI_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(sonyAI_data)
gapstatistics(sonyAI_data)
silhouette(sonyAI_data)



#99.-----------------------------soybeans--------------------- 
#Assign a name to the data set   
soybeans_data <- `Soybean backup-large Clean`
soybeans_data <-  removeLastCol(soybeans_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(soybeans_data)
gapstatistics(soybeans_data)
silhouette(soybeans_data)



#99.-----------------------------sp1fac--------------------- 
#Assign a name to the data set   
sp1fac_data <- `sp1-factor-binding-sites-on-chromosome1_numeric sequence`
sp1fac_data <-  removeLastCol(sp1fac_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(sp1fac_data)
gapstatistics(sp1fac_data)
silhouette(sp1fac_data)



#99.-----------------------------spruc--------------------- 
#Assign a name to the data set   
spruc_data <- spruce
spruc_data <-  removeLastCol(spruc_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(spruc_data)
gapstatistics(spruc_data)
silhouette(spruc_data)

#99.-----------------------------ssjan--------------------- 
#Assign a name to the data set   
ssjan_data <- SS_Janani_Suraksha_Yojana_JSY_District
ssjan_data <-  removeLastCol(ssjan_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(ssjan_data)
gapstatistics(ssjan_data)
silhouette(ssjan_data)



#99.-----------------------------statlib5--------------------- 
#Assign a name to the data set   
statlib5_data <- `statlib-20050214-csb_ch5`
statlib5_data <-  removeLastCol(statlib5_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(statlib5_data)
gapstatistics(statlib5_data)
silhouette(statlib5_data)


#99.-----------------------------statlib17--------------------- 
#Assign a name to the data set   
statlib17_data <- `statlib-20050214-csb_ch17`
statlib17_data <-  removeLastCol(statlib5_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(statlib17_data)
gapstatistics(statlib17_data)
silhouette(statlib17_data)



#99.-----------------------------statlibvir--------------------- 
#Assign a name to the data set   
statlibvir_data <- `statlib-20050214-prnn_viruses`
statlibvir_data <-  removeLastCol(statlibvir_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(statlibvir_data)
gapstatistics(statlibvir_data)
silhouette(statlibvir_data)



#99.-----------------------------statlibrabe--------------------- 
#Assign a name to the data set   
statlibrabe_data <- `statlib-20050214-rabe_148`
statlibrabe_data <-  removeLastCol(statlibrabe_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(statlibrabe_data)
gapstatistics(statlibrabe_data)
silhouette(statlibrabe_data)



#99.-----------------------------swedishleafTe--------------------- 
#Assign a name to the data set   
swedishleafTe_data <- SwedishLeaf_TEST
swedishleafTe_data <-  removeLastCol(swedishleafTe_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(swedishleafTe_data)
gapstatistics(swedishleafTe_data)
silhouette(swedishleafTe_data)



#99.-----------------------------swedishleafTr--------------------- 
#Assign a name to the data set   
swedishleafTr_data <- SwedishLeaf_TRAIN
swedishleafTr_data <-  removeLastCol(swedishleafTr_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(swedishleafTr_data)
gapstatistics(swedishleafTr_data)
silhouette(swedishleafTr_data)



#99.-----------------------------symbolT--------------------- 
#Assign a name to the data set   
symbolT_data <- Symbols_TEST
symbolT_data <-  removeLastCol(symbolT_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(symbolT_data)
gapstatistics(symbolT_data)
silhouette(symbolT_data)



#99.-----------------------------syntheticCon--------------------- 
#Assign a name to the data set   
syntheticCon_data <- synthetic_control_TEST
syntheticCon_data <-  removeLastCol(syntheticCon_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(syntheticCon_data)
gapstatistics(syntheticCon_data)
silhouette(syntheticCon_data)




#99.-----------------------------syntheticConT--------------------- 
#Assign a name to the data set   
syntheticConT_data <- synthetic_control_TRAIN
syntheticConT_data <-  removeLastCol(syntheticConT_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(syntheticConT_data)
gapstatistics(syntheticConT_data)
silhouette(syntheticConT_data)



#99.-----------------------------Tipj--------------------- 
#Assign a name to the data set   
Tipj_data <- TipJoke
Tipj_data <-  removeLastCol(Tipj_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(Tipj_data)
gapstatistics(Tipj_data)
silhouette(Tipj_data)



#99.-----------------------------TTImmune--------------------- 
#Assign a name to the data set   
TTImmune_data <- TT_Immunization_Vitamin_A_Iron_Supplement_And_Birth_Weight_District
TTImmune_data <-  removeLastCol(TTImmune_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(TTImmune_data)
gapstatistics(TTImmune_data)
silhouette(TTImmune_data)



#99.-----------------------------Util--------------------- 
#Assign a name to the data set   
Util_data <- Utilities2
Util_data <-  removeLastCol(Util_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(Util_data)
gapstatistics(Util_data)
silhouette(Util_data)



#99.-----------------------------Vsillxaa--------------------- 
#Assign a name to the data set   
Vsillxaa_data <- `Vehicle Silhouettes_xaa_Clean`
Vsillxaa_data <-  removeLastCol(Vsillxaa_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(Vsillxaa_data)
gapstatistics(Vsillxaa_data)
silhouette(Vsillxaa_data)



#99.-----------------------------Vsillxac--------------------- 
#Assign a name to the data set   
Vsillxac_data <- `Vehicle Silhouettes_xac_clean`
Vsillxac_data <-  removeLastCol(Vsillxac_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(Vsillxac_data)
gapstatistics(Vsillxac_data)
silhouette(Vsillxac_data)



#99.-----------------------------vercol--------------------- 
#Assign a name to the data set   
vercol_data <- vertebral_column
vercol_data <-  removeLastCol(vercol_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(vercol_data)
gapstatistics(vercol_data)
silhouette(vercol_data)



#99.-----------------------------vnyard--------------------- 
#Assign a name to the data set   
vnyard_data <- vineyard
vnyard_data <-  removeLastCol(vnyard_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(vnyard_data)
gapstatistics(vnyard_data)
silhouette(vnyard_data)



#99.-----------------------------vcher--------------------- 
#Assign a name to the data set   
vcher_data <- voucher
vcher_data <-  removeLastCol(vcher_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(vcher_data)
gapstatistics(vcher_data)
silhouette(vcher_data)



#99.-----------------------------vvbreast--------------------- 
#Assign a name to the data set   
vvbreast_data <- VV_Breastfeeding_And_Supplementation_District
vvbreast_data <-  removeLastCol(vvbreast_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(vvbreast_data)
gapstatistics(vvbreast_data)
silhouette(vvbreast_data)



#99.-----------------------------wag2--------------------- 
#Assign a name to the data set   
wag2_data <- wage2
wag2_data <-  removeLastCol(wag2_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wag2_data)
gapstatistics(wag2_data)
silhouette(wag2_data)



#99.-----------------------------wd--------------------- 
#Assign a name to the data set   
wd_data <- wdbc
wd_data <-  removeLastCol(wd_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wd_data)
gapstatistics(wd_data)
silhouette(wd_data)




#99.-----------------------------wilcat--------------------- 
#Assign a name to the data set   
wilcat_data <- wildcat
wilcat_data <-  removeLastCol(wilcat_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wilcat_data)
gapstatistics(wilcat_data)
silhouette(wilcat_data)


#99.-----------------------------wine--------------------- 
#Assign a name to the data set   
wine_data <- wine
wine_data <-  removeLastCol(wine_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wine_data)
gapstatistics(wine_data)
silhouette(wine_data)



#99.-----------------------------wssynonyms--------------------- 
#Assign a name to the data set   
wssynonyms_data <- WordsSynonyms_TEST
wssynonyms_data <-  removeLastCol(wssynonyms_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wssynonyms_data)
gapstatistics(wssynonyms_data)
silhouette(wssynonyms_data)


#99.-----------------------------wwbirth--------------------- 
#Assign a name to the data set   
wwbirth_data <- WW_Birth_Registration_District
wwbirth_data <-  removeLastCol(wwbirth_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(wwbirth_data)
gapstatistics(wwbirth_data)
silhouette(wwbirth_data)



#99.-----------------------------xap--------------------- 
#Assign a name to the data set   
xap_data <- `xAPI-Edu`
xap_data <-  removeLastCol(xap_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(xap_data)
gapstatistics(xap_data)
silhouette(xap_data)


#99.-----------------------------zo--------------------- 
#Assign a name to the data set   
zo_data <- zoo
zo_data <-  removeLastCol(zo_data)
#Predict Using Gap,Silhoutte and Elbow.
elbow_method(zo_data)
gapstatistics(zo_data)
silhouette(zo_data)














































































