#' @export
plot_cov = function( Cov, zlim=NULL, names=1:nrow(Cov), ncolors=21, digits=3 ){
  Col = colorRampPalette(colors=c("blue","white","red"))
  if(is.null(zlim) ) zlim = c(-1,1)*max(abs(Cov))
  image(z=Cov[1:nrow(Cov),nrow(Cov):1], x=seq(0,1,length=nrow(Cov)), y=seq(0,1,length=nrow(Cov)), col=Col(ncolors), xaxt="n", yaxt="n", zlim=zlim, yaxt="n", ylab="", xlab="" )
  axis(side=2, at=seq(0,1,length=nrow(Cov)), labels=rev(names), las=1)
  axis(side=3, at=seq(0,1,length=nrow(Cov)), labels=names, las=2)
  for(i in 1:nrow(Cov)){
  for(j in 1:nrow(Cov)){
    text( y=seq(1,0,length=nrow(Cov))[i], x=seq(0,1,length=nrow(Cov))[j], labels=formatC(Cov[i,j],digits=digits,format="f"))
  }}
}
