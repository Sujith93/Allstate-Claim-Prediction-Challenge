

x <- data
path="G:\\Old_drive\\Projects\\Allstate_Claim_Prediction_Challenge\\plots"

plotsfunc <- function(x,path=b){
  
  dataclass <- data.frame(sapply(x, class))
  for(i in 5:ncol(x)){
    if(dataclass[i,]=="integer"|dataclass[i,]=="numeric"){
      #Histogram
      filename<- paste(path,"/",rownames(dataclass)[i], ".png", sep="")
      png(file=filename,width=600, height=350)
      require(rcompanion)
      plotNormalHistogram(x[,rownames(dataclass)[i]],main =rownames(dataclass)[i])
      dev.off()
      #boxplot
      filename1<- paste(path,"/",rownames(dataclass)[i], "_boxpolt.png", sep="")
      png(file=filename1,width=600, height=350)
      boxplot(x[,rownames(dataclass)[i]],main = rownames(dataclass)[i])
      dev.off()
    }
    else if(dataclass[i,]=="factor"|dataclass[i,]=="logical"){
      #barpot
      filename<- paste(path,"/",rownames(dataclass)[i], ".png", sep="")
      png(file=filename,width=600, height=350)
      barplot(table(x[,rownames(dataclass)[i]]),main =rownames(dataclass)[i])
      dev.off()
    }
  }
}

#plotsfunc(x,path)
