calc_error <- function(x = c(1,3,5,9,14), yhat = mean(x), errorMeth = "SSE", 
                       weights = NULL, raw = FALSE) {
  # Caculates the error of a vector with one of a selection of methods.
  # x = vector of scores for which to calculate errors
  # yhat = constant used to calculate errors
  # errorMeth = error method:
  #   CE = count of errors
  #   SE = sum of errors
  #   SAE = sum of absolute value of errors
  #   SSE = sum of squared errors
  #   WSSE = weighted sum of squared errors (requires weights)
  # weights = either a single value or a vector the length of x used as
  #           weights.
  # raw = if TRUE, return vector of errors. If FALSE (default), return sum of
  #       errors.
  
  if(errorMeth == "CE") {
    e <- x - yhat != 0
  } else if (errorMeth == "SE") {
    e <- x - yhat
  } else if (errorMeth == "SAE"){
    e <- abs(x - yhat)
  } else if (errorMeth == "SSE"){
    e <- (x - yhat)^2
  } else if (errorMeth == "WSSE"){
    e <- weights*((x - yhat)^2)
  }
  ifelse(raw, return(e), return(round(sum(e), 2)))
}
