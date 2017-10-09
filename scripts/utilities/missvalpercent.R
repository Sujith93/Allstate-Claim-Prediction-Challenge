
#a=data
missValpercent <- function(a,symbol=NULL) {
  
  if(is.null(symbol)==T){
    NAcount <- data.frame(NApercent=apply(a,2,function(x) sum(is.na(x))/nrow(a)))
  }else{
    NAcount <- data.frame(NApercent=apply(a,2,function(x) sum(x==symbol)/nrow(a)))
  }
  return(NAcount)
  
}

#missValuespercent(a,c("?",""))    #for symbols spaces,?..etc..
#missValuespercent(a)        #for NA's 
