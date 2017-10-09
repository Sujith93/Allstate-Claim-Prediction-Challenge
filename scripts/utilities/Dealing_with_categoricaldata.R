###########categorical encoding

cat_encoding <- function(xdata){
for (f in colnames(xdata)) {
  if (class(xdata[[f]])=="character" | class(xdata[[f]])=="factor") {
    levels <- unique(xdata[[f]])
    xdata[[f]] <- as.integer(factor(xdata[[f]], levels=levels))
  }
}
}


