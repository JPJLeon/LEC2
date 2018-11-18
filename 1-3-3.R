#Pregunta 1.3.3
#muestra1000 con los 1000 datos a usar

datosDisparosAcertados <- muestra1000 [which(as.numeric(as.character(muestra1000$`Distancia al Centro`)) <= 1), ]
cantidadDeDisparosAcertados <- nrow(datosDisparosAcertados)

cantidadDeSlingshotsAcertados <- nrow(
  datosDisparosAcertados [which(datosDisparosAcertados$`Tipo de Disparo` == "Slingshot"),]
)

#Probabilidad de que el tipo de tiro sea Slingshot si el disparo fue acertado
probabilidadCondicionada <- cantidadDeSlingshotsAcertados/cantidadDeDisparosAcertados
probabilidadCondicionada