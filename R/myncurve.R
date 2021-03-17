#' Produces curve with given values
#'
#' Takes a mean, a sd, and an a value to show a region shaded of the curve
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return a graph of the curve
#' @export
#'
#' @examples
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))

  xcurve = seq(mu-3*sigma, a, length = 1000) # x of curve
  ycurve = dnorm(xcurve, mean = mu, sd = sigma) # y of density of curve

  polygon(c(mu-3*sigma, xcurve, a), c(0, ycurve, 0), col = "Pink") # filling in the area

  area = pnorm(a, mean = mu, sd = sigma) # probability
  area = round(area, 4) # round to four decimals

  text(x = a, y = 0.01, paste("Area = ", area, sep="")) # text display
}
