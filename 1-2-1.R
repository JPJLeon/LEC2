#Pregunta 1.2.1
library(ggplot2)

probabilidadRobarMonstruo <- function (repeticiones){
  mazo <- c("MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA",
            "T", "T", "T", "T", "T", "T", "T", "T", "T", "T")
  probabilidades <- c()
  cantidadMonstruos <- 0.0
  
  for(r in 1:repeticiones){
    for(i in 1:r){
      indice <- sample(1:length(mazo), 1)
      if("MO" %in% mazo[indice]){
        cantidadMonstruos <- cantidadMonstruos + 1
      }
    }
    probabilidades <- c(probabilidades, cantidadMonstruos/r)
    cantidadMonstruos <- 0.0
  }
  return(probabilidades)
}
 
probs <- probabilidadRobarMonstruo(500)
indice <- seq(1, 500, 1)

datos <- data.frame(indice,probs)
 



# Basic scatter plot
ggplot(datos, aes(x=indice, y=probs)) + 
  geom_point() +
  geom_smooth(method=lm, se=FALSE) +
  labs(title="Probabilidad de Robar un Carta de Monstruo",
        x="Cantidad de Pruebas", y = "Probabilidad Obtenida")