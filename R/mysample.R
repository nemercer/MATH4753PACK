#' Sample Package
#'
#' Creates a sample given size, number of iterations and time between them
#'
#' @param n
#' @param iter
#' @param time
#'
#' @return sample
#' @export
#'
#' @examples
#'
mysample=function(n, iter=10,time=0.5){
  for( i in 1:iter){

    #make a sample
    s=sample(1:10,n,replace=TRUE)

    # turn the sample into a factor
    sf=factor(s,levels=1:10)

    #make a barplot for one of the plots (we are showing the 15th one)
    if(i == 15){
      barplot(table(sf)/n,beside=TRUE,col=rainbow(10),
              main=paste("Example sample()", " iteration ", i, " n= ", n,sep="") ,
              ylim=c(0,0.2)
      )
    }

    #release the table
    Sys.sleep(time)
  }
}
