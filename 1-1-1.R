#Pregunta 1.1.1

probabilidadNoConsistente <- function (tamanhoMano, repeticiones){
  mazo <- c("MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO", "MO",
            "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA", "MA",
            "T", "T", "T", "T", "T", "T", "T", "T", "T", "T")
  
  cantidadManosConsistentes <- 0.0
  
  for(r in 1:repeticiones){
    mazoTemporal <- mazo
    manoTemporal <- c()
    
    for(i in 1:tamanhoMano){
      indice <- sample(1:length(mazoTemporal), 1)
      manoTemporal <- c(manoTemporal, mazoTemporal[indice])
      mazoTemporal <- mazoTemporal[-indice]
      
    }
    
    if( "MO" %in% manoTemporal & "MA" %in% manoTemporal & "T" %in% manoTemporal){
      cantidadManosConsistentes <- cantidadManosConsistentes + 1
    }
  }
  
  return(1 - cantidadManosConsistentes/repeticiones)
}
  
probabilidadNoConsistente(5, 10000)
