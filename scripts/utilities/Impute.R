
##This function maps pincodes and gives its corresponding states as specified in wiki (https://en.wikipedia.org/wiki/Postal_Index_Number)
## The inputs to this function are 1.newdata = Dataset containing pincode column and column name must be "PINCODE"
##                                 2. states_pincode = Dataframe with pincode and specific region from wiki
##output: new dataframe with one more column to the data in input newdata



state_impute <- function(newdata,states_pincode){
##fecting the first two characters of pincode
substr <- substr(newdata$PINCODE, 1, 2)
##fecting the first three characters of pincode
substr3 <- substr(newdata$PINCODE, 1, 3)
for(i in 1:nrow(states_pincode)){
newdata$STATE_impute[(which(substr==states_pincode$PIN.prefix[i])) ] <- as.character(states_pincode$Region[i])
}

for(i in 1:nrow(states_pincode)){
  newdata$STATE_impute[(which(substr3==states_pincode$PIN.prefix[i])) ] <- as.character(states_pincode$Region[i])
}
newdata_impute <- newdata
return(newdata_impute)
}



# state_impute <- function(newdata,states_pincode){
#    stateimpute <- data.frame()
#    for(i in 1:nrow(states_pincode)){
#      pinsubset <- subset(newdata,substr(newdata$PINCODE, 1, 2)==states_pincode$PIN.prefix[i])
#       # pinsubset_3 <- substr(pinsubset$PINCODE, 1, 3)
#       # which(substr(newdata$PINCODE, 1, 2)==states_pincode$PIN.prefix[i])
#       # match(as.character(pinsubset_3), as.character(states_pincode$PIN.prefix))
#      if(nrow(pinsubset)>0){
#      pinsubset$STATE <- states_pincode$Region[i]
#      stateimpute <- rbind(stateimpute,pinsubset)
#      }
#      else {
#        pinsubset <- subset(newdata,substr(newdata$PINCODE, 1, 3)==states_pincode$PIN.prefix[i])
#        if(nrow(pinsubset)>0){
#        pinsubset$STATE <- states_pincode$Region[i]
#        stateimpute <- rbind(stateimpute,pinsubset)
#        }
#        }}
#      return(stateimpute)
#    
# }



#stateimpute <- state_impute(newdata,states_pincode)

