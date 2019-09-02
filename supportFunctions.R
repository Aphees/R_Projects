#---------Read in the  files in the CSV folder at once----- 
readAllFiles <- function(directory){
  temp = list.files(path = directory, pattern="*.csv", full.names = TRUE)
  myfiles = lapply(temp, read.csv,header = FALSE, stringsAsFactors = FALSE)
}

#readAllFiles("data")

#-------------------Normalize the data set----------------- 
normalize <- function(x) {
  return ((x - min(x))/(max(x) -min(x)))
}


#---------Scale and convert the file into a data frame-----
scaleNconvert <- function(data1)
{
  data1 <- as.data.frame(lapply(data1, normalize))
}

#---------------Convert to a dataframe without scaling-----
convert_DF <- function(data1)
{
  data1 <- as.data.frame(data1)
}


#-----------------remove outliers-------------------------- 
removeOutliers <- function(data1){
  data1 <- data1 %>% 
    na.omit() 
}

#---------------------Elbow Method------------------------
elbow_method <- function(data1){
  fviz_nbclust(data1, kmeans, method = "wss", print.summary=TRUE) +
    #geom_vline(xintercept = 2, linetype = 2)+
    labs(subtitle = "Elbow method")
}

#----------------- Silhouette method ---------------------
silhouette <- function(data1) {
  fviz_nbclust(data1, kmeans, method = "silhouette", print.summary=TRUE)+
    labs(subtitle = "Silhouette method"
    )
}

#------------------- Gap statistic ------------------------
gapstatistics <- function(data1){
  fviz_nbclust(data1, kmeans, nstart = 20,  
               method = "gap_stat", nboot = 25, print.summary=TRUE)+
    labs(subtitle = "Gap statistic method")
  
}
#Use squaroot of the number of rows to get the number of iterations 
calMaxNum <-  function(dataSet){
  return (round(sqrt(nrow(dataSet)), digits = 0))
}

#Get the last Column of the data set 
getLastCol <-  function(dataSet){
  return (t(as.data.frame((as.list(dataSet[,ncol(dataSet)])))))
}

#Remove the last Column from the original data set
removeLastCol <- function(dataSet){
  return (dataSet[,-ncol(dataSet)])
}


#--------------------End of Fuctions -------------------------------
