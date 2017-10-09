
#############Print the time consumed

msg <- function(mmm,...)
{
  cat(sprintf(paste0("[%s] ",mmm),Sys.time(),...)); cat("\n")
}

############### Gives AUC value

auc<-function (actual, predicted) {
  
  r <- as.numeric(rank(predicted))
  
  n_pos <- as.numeric(sum(actual == 1))
  n_neg <- as.numeric(length(actual) - n_pos)
  auc <- (sum(r[actual == 1]) - n_pos * (n_pos + 1)/2)/(n_pos *  n_neg)
  auc
  
}

####################  # Map all categoricals into numeric.
cat("Assuming text variables are categorical & replacing them with numeric ids\n")
for (f in colnames(xtrain)) {
  if (class(xtrain[[f]])=="character") {
    print(f)
    levels <- unique(xtrain[[f]])
    xtrain[[f]] <- as.integer(factor(xtrain[[f]], levels=levels))
  }
}













