#Pregunta 1.3.4
#muestra1000 con los 1000 datos a usar

datosDisparosFallidos <- muestra1000 [which(as.numeric(as.character(muestra1000$`Distancia al Centro`)) > 1), ]
cantidadDeDisparosFallidos <- nrow(datosDisparosFallidos)

cantidadDeArcosFallidos <- nrow(
  datosDisparosFallidos [which(datosDisparosFallidos$`Tipo de Disparo` == "Arco"),]
)

#Probabilidad de que el tipo de tiro sea Arco si el disparo fue fallido
probabilidadCondicionada <- cantidadDeArcosFallidos/cantidadDeDisparosFallidos
probabilidadCondicionada