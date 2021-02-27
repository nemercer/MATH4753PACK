#' Piece wise function
#'
#' Takes an x value and a coefficient and returns a piece wise regression function
#'
#' @param x
#' @param coef
#'
#' @return piece wise regression function y given x
#' @export
#'
#' @examples
#'
myf = function(x,coef){
  coef[1]+coef[2]*(x) + coef[3]*(x-18)*(x-18>0) # piece wise function
}
