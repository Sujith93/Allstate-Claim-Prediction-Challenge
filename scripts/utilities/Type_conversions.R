#These functions are Regarding data type conversion in data.
#input to these functions are 1.data = dataset
#                             2.list = list of column number
#                             3.format= date format (it is used in Date_conv)

###########factor type
factor_conv <- function(data,list){
  data[,list] <- lapply(data[,list],function(x) as.factor(as.character(x)))
  factor_data <- data
  return(factor_data)
}
#factor_conv(newdata,c(1,2,5))

#####numeric type
numeric_conv <- function(data,list){
  data[,list] <- lapply(data[,list],function(x) as.numeric(as.character(x)))
  numeric_data <- data
  return(numeric_data)
}

#numeric_conv(newdata,c(53,54))


###date
Date_conv <- function(data,list,format){
  data[,list] <- lapply(data[,list],function(x) as.Date(newdata$POLICY_START_DATE,format=format))
  Date_data <- data
  return(Date_data)
}

#Date_conv(newdata,c(4,15,16),"%m/%d/%Y")





