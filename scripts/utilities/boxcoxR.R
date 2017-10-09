
 # x=scale_norm_vars_numeric
 # cuttoff=0
#YeoJohnson
#BoxCox


boxcox_trans <- function(x,cuttoff,method){
  library(e1071)
  library(caret)
  nums <- sapply(x, is.numeric)
  train_num <- x[ , nums]
  train_num_enc <- data.frame(matrix(ncol = ncol(train_num), nrow = nrow(train_num)))
  colnames(train_num_enc) <- paste0("cont",seq(1:ncol(train_num)))
  skewness <- data.frame()
  
  for(i in 1:ncol(train_num)){
    print(i)
    values <-train_num[,i]
    sk=skewness(values)
    sks <- data.frame(colname=colnames(train_num[i]),sk)
    skewness <- rbind(skewness,sks)
    if(sk>cuttoff){
      # lam = boxcox(values+1)
      lam1<- preProcess(data.frame(values+1), method=c(method))
      lam <- predict(lam1, data.frame(values+1)) 
      train_num_enc[,i] <- lam
    }
    else{
      train_num_enc[,i] <- train_num[,x]
    }
  } 
  return(train_num_enc)
}

#write.csv(train_num_enc,"train_num_enc.csv")
