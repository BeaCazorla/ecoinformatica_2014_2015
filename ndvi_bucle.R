###NDVI CON BUCLEEEEEEEEE

hora<-c("12","13","14","15")
vector<-c()
for (i in hora) {
  imagenes<- list.files(path="./ndvi", full.names = TRUE,
                        pattern=paste("_", i, "..\\.jpg\\.asc$", sep=";"))
  a<-stack(imagenes)
  b<-mean(a)
  f<-mean(b[])
  vector<-rbind(vector,f)
}
plot(vector)
