base = iris

base2= base[1:4]

library(cluster)
library(ggplot2)

test<-pam(base2, 3, metric = "euclidean", stand = FALSE)

previsoes = test$clustering

table(base$Species,previsoes)

clusplot(base2, previsoes, color = TRUE)

clusplot(base2, base$Species, color = TRUE)

plot(base2, col=previsoes)

plot(base2, col=base$Species)

ggplot(base2, aes(x=Sepal.Length, y=Sepal.Width))+geom_point(size=2)

ggplot()+ geom_point(aes(x= base$Sepal.Length, y= base$Sepal.Width, color = base$Species))

ggplot()+ geom_point(aes(x= base$Sepal.Length, y= base$Sepal.Width, color = previsoes))



