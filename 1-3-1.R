#Pregunta 1.3.1

obtenerMuestra <- function (numeroDisparos) {
  muestra <- c()
  
  for(i in 1:numeroDisparos){
    resultadoDado <- sample(1:6, 1)
    
    if(resultadoDado == 1){
      muestra <- rbind(muestra, c("Rifle", disparoRifle(1)))
    } else if(resultadoDado == 2){
      muestra <- rbind(muestra, c("Arco", disparoArco(1)))
    } else if(resultadoDado >= 3 & resultadoDado <= 5){
      muestra <- rbind(muestra, c("Slingshot", disparoSling(1)))
    } else if(resultadoDado == 6){
      muestra <- rbind(muestra, c("Ballesta", disparoBallesta(1)))
    }
  }
  
  datos <- data.frame(muestra)
  colnames(datos) <- c("Tipo de Disparo", "Distancia al Centro")
  return(datos)
}