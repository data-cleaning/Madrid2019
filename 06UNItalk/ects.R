
library(RColorBrewer)
dat <- data.frame(
  semester      = c( 1, 2, 3, 4, 5, 6 ) 
  , math        = c(12, 0, 0, 0, 0, 0 )
  , statistics  = c( 0, 10,10,0, 0, 0 )
  , methods     = c( 0, 0, 0, 8, 8, 0 )
  , programming = c( 4, 4, 4, 4, 4, 0 )
  , offstats    = c( 4, 6, 6, 8, 4, 0 )
  , elective    = c( 0, 0, 0, 0, 4, 8 )
  , project     = c( 0, 0, 0, 0, 0, 12)
)

m <- as.matrix(dat[2:8])

pdf("06talk/fig/ects.pdf",height=8,width=12)
oldpar <- par(mar=c(5.1,3.1,4.1,12))

pal <- brewer.pal(8,"Dark2")
cols <- c(
    pal[3]
  , adjustcolor(pal[3],alpha.f=0.6)
  , adjustcolor(pal[3],alpha.f=0.3)
  , pal[4:6]
  , adjustcolor(pal[5], alpha.f=0.6))

barplot(t(m), names.arg = 1:6, col=cols, legend.text=TRUE
        , las=1, ylab = "ECTS", xlab="semester"
        , cex.axis = 2, cex.lab=2, cex.names=2
        , args.legend = list(x=9.6,y=21.00,horiz=FALSE,bty='n',cex=2))
mtext("ECTS",3,adj=0,padj = -0.5,font = 2,cex=2)
par(oldpar)
dev.off()

