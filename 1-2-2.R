#Pregunta 1.2.2

library(ggplot2)

probabilidadRobar5Monstruos <- function (repeticiones){
  mazo <- c("MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA",
            "T", "T", "T", "T", "T", "T", "T", "T", "T", "T")
  probabilidades <- c()
  
  for(r in seq(1, repeticiones, 5)){
    cantidadManos5Monstruos <- 0.0
    mazoTemporal <- mazo
    
    for(i in 1:r){
      cantidadMonstruos <- 0.0
      for(j in 1:5){
        indice <- sample(1:length(mazo), 1)
        if("MO" %in% mazo[indice]){
          cantidadMonstruos <- cantidadMonstruos + 1
        }
        mazoTemporal <- mazoTemporal[-indice]
      }
      
      if(cantidadMonstruos == 5.0){
        cantidadManos5Monstruos <- cantidadManos5Monstruos + 1
      }
    }
    probabilidades <- c(probabilidades, cantidadManos5Monstruos/r)
  }
  return(probabilidades)
}

probs <- probabilidadRobar5Monstruos(1000)
indice <- seq(1, 1000, 5)

datos <- data.frame(indice,probs)




# Basic scatter plot
ggplot(datos, aes(x=indice, y=probs)) + 
  geom_point() +
  geom_smooth(method=lm, se=FALSE) +
  labs(title="Probabilidad de Robar 5 cartas de Monstruo",
       x="Cantidad de Pruebas", y = "Probabilidad Obtenida") +
  annotate("text", x = 875, y = 0.075, label = "Probabilidad Teorica = 0.02356202")


