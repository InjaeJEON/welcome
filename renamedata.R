# rename files 
FileNameChanger = function( basePath, baseFileName, fromIdx ) {
  fileList <- list.files(basePath, pattern = NULL, all.files = TRUE);
  
  for(i in 3:length(fileList)) {
    prevFileName <- fileList[i];
    prevFileName <- paste(basePath, prevFileName, sep = "", collapse = NULL);
    
    newFileName <- sprintf("%s%03d.csv", baseFileName, fromIdx);
    newFileName <- paste(basePath, newFileName, sep = "", collapse = NULL);
    
    file.rename(from = prevFileName, to = newFileName);
    
    fromIdx <- fromIdx + 1;
  }
}
source("./FileNameChanger.R")
basePath <- "./baci_02/"
baseFileName <- "baci_02_"
FileNameChanger(basePath, baseFileName, 2002)