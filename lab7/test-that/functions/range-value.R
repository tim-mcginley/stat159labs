range_value <- function(x, na.rm = FALSE) {
  if(na.rm) {
    return(max(na.omit(x)) - min(na.omit(x)))
  } else {
    return(max(x) - min(x))
  }
}

range_value(y)

na.omit(max(y)) - na.omit(min(y))
