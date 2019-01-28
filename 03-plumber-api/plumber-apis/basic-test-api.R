# this is a basic test api

#' Echo the parameter that was sent in
#' @param msg The message to echo back
#' @get /echo
function(msg=""){
 list(msg = paste0("The message is '", msg, "'")) 
}

#' Plot a histogram
#' @png
#' @get /plot
function(){
  rand <- rnorm(1000)
  hist(rand)
}
