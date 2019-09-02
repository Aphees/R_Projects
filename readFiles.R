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

?gsub

