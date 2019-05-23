
library(VennDiagram)
cols <- adjustcolor(c("red","green","blue"), alpha.f = 0.5)

pdf('06talk/fig/dsvenn3.pdf')
plot.new()
draw.triple.venn(
    area1 = 100, area2 = 100, area3 = 100
  , n12   = 10, n13   = 10, n23   = 10, n123  = 10
  , fill=cols
  , label.col=rep(0,7)
  , category = c("Google","Copy","Paste")
  , cat.cex = 4.0
  , cat.just =list(c(0.2,0),c(0.8,0),c(0.6,0))
  , cat.default.pos = "text")
text(0.45,0.55,"Data\nScience",cex=2.5)
dev.off()

