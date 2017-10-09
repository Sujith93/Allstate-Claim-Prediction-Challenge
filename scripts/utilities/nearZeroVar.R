var1 <- function(df){
  library(caret)
  nzv <- nearZeroVar(df, saveMetrics = T, foreach = T)
  rownames <- rownames(nzv)
  ZeroVar <- rownames[which(nzv$zeroVar=='TRUE')]
  nzv <- rownames[which(nzv$nzv=='TRUE')]
  return(list(ZeroVar = ZeroVar ,nzv = nzv))
}
var1(df=newdata)
#nearZeroVar(newdata)
