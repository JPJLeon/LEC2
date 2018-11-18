#Pregunta 1.3.2
#muestra1000 con los 1000 datos a usar
library(ggplot2)

datosRifle <- muestra1000 [which(muestra1000$"Tipo de Disparo" == "Rifle"),]
tirosAcertadosRifle <- datosRifle[which(as.numeric(as.character(datosRifle$`Distancia al Centro`)) <= 1), ]

cantidadAciertosRifle <- nrow(tirosAcertadosRifle)
cantidadTotalRifle <- nrow(datosRifle) - cantidadAciertosRifle

probabilidadAciertoRifle <- cantidadAciertosRifle/cantidadTotalRifle

probabilidadAciertoRifle