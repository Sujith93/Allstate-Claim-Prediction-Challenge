




scale_normal <- function(a) {
  
  
  
      scaling <- function(x1) {
              my_scale <- data.frame(apply(x1, 2, function(x) {
          (x - mean(x))/sd(x)
        }))
      } 
              
              normalizing <- function(x2) {
    normalize <- data.frame(apply(x2, 2, function(x) {
      return ((x - min(x)) / (max(x) - min(x)))
    }))
              }




    scaled_data <- scaling(a)
    scaled_normal_data<- normalizing(scaled_data)
    return(scaled_normal_data)
            
      
}











# scale_normal <- function(a) {
#   my_scale <- data.frame(apply(x1, 2, function(x) {
#       (x - mean(x))/sd(x)
#     }))
#   
#   
#   normalize <- data.frame(apply(x2, 2, function(x) {
#     return ((x - min(x)) / (max(x) - min(x)))
#   }))
#   
#   
#   scaled_data <- my_scale(a)
#   scaled_normal_data<- normalize(scaled_data)
#   return(scaled_normal_data)
# }

# my_scale <- function(x) {
#   apply(m, 2, function(x) {
#     (x - mean(x))/sd(x)
#   }) 
# }
# 
# normalize <- function(x) {
#   return ((x - min(x)) / (max(x) - min(x)))
# }