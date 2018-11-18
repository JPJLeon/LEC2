#Pregunta 1.3.5
#muestra1000 con los 1000 datos a usar

datosDisparosSinRifle <- muestra1000 [which(muestra1000$'Tipo de Disparo' != "Rifle"), ]
cantidadDeDisparos <- nrow(datosDisparosSinRifle)

cantidadDeDisparosAcertados <- nrow(datosDisparosSinRifle [which(as.numeric(as.character(datosDisparosSinRifle$'Distancia al Centro')) <= 1), ])

#Probabilidad de que el tiro sea acertado si no se utilizan armas de fuego
probabilidadCondicionada <- cantidadDeDisparosAcertados/cantidadDeDisparos
probabilidadCondicionada


