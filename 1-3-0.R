#Funciones para preguntas 1.3.-

#centro en 0.0, eje 'X' crece hacia la derecha y eje 'Y'hacia arriba

#cada funcion entrega una lista con las distancias que existieron entre
#los tiros hechos y el centro del blanco (0,0)

disparoRifle <- function (numeroDisparos){
  coordenadasX <- runif(numeroDisparos, -4.0, 4.0)
  coordenadasY <- runif(numeroDisparos, -4.0, 4.0)
  
  distancias <- round( (coordenadasX**2 + coordenadasY**2)**0.5 , 3)
  
  return(distancias)
}

disparoArco <- function (numeroDisparos){
  coordenadasX <- runif(numeroDisparos, -5.0, 7.0)  
  coordenadasY <- runif(numeroDisparos, -6.0, 6.0) 
  
  distancias <- round( (coordenadasX**2 + coordenadasY**2)**0.5 , 3)
  
  return(distancias)
}

disparoSling <- function (numeroDisparos){
  coordenadasX <- runif(numeroDisparos, -10.0, 10.0)  
  coordenadasY <- runif(numeroDisparos, -10.0, 10.0) 
  
  distancias <- round( (coordenadasX**2 + coordenadasY**2)**0.5 , 3)
  
  return(distancias)
}

disparoBallesta <- function (numeroDisparos){
  coordenadasX <- runif(numeroDisparos, -5.0, 5.0)  
  coordenadasY <- runif(numeroDisparos, -3.0, 7.0) 
  
  distancias <- round( (coordenadasX**2 + coordenadasY**2)**0.5 , 3)
  
  return(distancias)
}

