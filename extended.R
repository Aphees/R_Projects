# This Project is a new implementation of the 
# Extended abstract Project towards a paper 
# publication on it #
#################################################
# Tentative Title: choosing the number of cluster 
# with Concensus clustering, 
# Gap Statistics and the elbow method
#################################################
#----------------Package Container-------------------------
source("initialPackages.R")


#---------Read in the  files in the CSV folder at once----- 
readAllFiles <- function(directory){
  temp = list.files(path = directory, pattern="*.csv", full.names = TRUE)
  myfiles = lapply(temp, read.csv,header = FALSE, stringsAsFactors = FALSE)
}

readAllFiles("data")

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
  fviz_nbclust(data1, kmeans, method = "wss") +
    geom_vline(xintercept = 3, linetype = 2)+
    labs(subtitle = "Elbow method")
}

#----------------- Silhouette method ---------------------
silhouette <- function(data1) {
  fviz_nbclust(data1, kmeans, method = "silhouette")+
    labs(subtitle = "Silhouette method")
}

#------------------- Gap statistic ------------------------
gapstatistics <- function(data1){
  fviz_nbclust(data1, kmeans, nstart = 25,  
               method = "gap_stat", nboot = 50)+
    labs(subtitle = "Gap statistic method")
}
#--------------------End of Fuctions -------------------------------

# Function to perform elbow method  
# The Elbow method looks at the total WSS as 
# a function of the number of clusters: 
# One should choose a number of clusters so that adding 
# another cluster doesn’t improve much better the total WSS
#-------------------------------------------------------------------


#----------------------- RUNS Begin----------------------------------  
# Assign the files to a variable myfiles
myfiles <- readAllFiles("data")

typeof(myfiles)
#Select individual files to be used for the experiment
#selectFile <- function()
#{
    
  myDir <- "data"
  filenames <- list.files(myDir)
  filenames <- filenames[grep("[.]csv", filenames)]
  data_names <- gsub("[.]csv", "", filenames)
  
    #temp = list.files(path = directory, pattern="*.csv", full.names = TRUE)
    #myfiles = lapply(temp, read.csv,header = FALSE, stringsAsFactors = FALSE)
    #myfiles <- readAllFiles(directory)
    for(i in 1:length(filenames)){
      assign(data_names[i], read.csv(file.path(myDir, filenames[i]), ,header = FALSE, 
                                     stringsAsFactors = FALSE)) 
      
   admitted <-  admit
  View(admitted)    
      #assign(i,read.csv(temp[[i]],header = FALSE, stringsAsFactors = FALSE))
    #filee2 <- myfiles[i]
    } 
    #filee2
#}
  
 

#temp
store <- selectFile()

file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])
file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])
file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])
file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])
file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])
file1 <- as.data.frame(myfiles[1])
file2 <- as.data.frame(myfiles[2])
file3 <- as.data.frame(myfiles[3])


# auto-mpg
#file11 <- file11[,3:6]

elbow_method(file11)
silhouette(file11)
gapstatistics(file11)








#file11 <- scaleNconvert(file11)
#elbow_method(file11[,2:6])
#file11_clusters <- kmeans(file11,3)
# The graphs 
#plot(file11, col = file11_clusters$cluster)





