#Pregunta 1.1.3

probabilidadEstrategia <- function (tamanhoMano, repeticiones){
  mazo <- c("TN", "TN", "TN", "TN", "TN", "MO", "MO", "MO", "MO", "MO",
            "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA",
            "T", "T", "T", "T", "T", "T", "T", "T", "T", "T")
  
  cantidadManosEstrategia <- 0.0
  
  for(r in 1:repeticiones){
    mazoTemporal <- mazo
    manoTemporal <- c()
    
    for(i in 1:tamanhoMano){
      indice <- sample(1:length(mazoTemporal), 1)
      manoTemporal <- c(manoTemporal, mazoTemporal[indice])
      mazoTemporal <- mazoTemporal[-indice]
      
    }
    
    if("TN" %in% manoTemporal){
      if("TN" %in% manoTemporal[-match("TN", manoTemporal)]){
        if("MO" %in% manoTemporal[tamanhoMano]){
          cantidadManosEstrategia <- cantidadManosEstrategia + 1
        }
      }
    }
  }
  
  return(cantidadManosEstrategia/repeticiones)
}

probabilidadEstrategia(8, 10000)