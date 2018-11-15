#Pregunta 1.1.4

probabilidadEstrategiaCompetitiva <- function (tamanhoMano, repeticiones){
  mazo <- c("MOD", "MOD", "MOD", "MOD", "MOD", "MOD", "MOD", "MOD", "MOD", "MOD",
            "MOD", "MOD", "MOD", "MOD", "MOD", "MOF", "MOF", "MOF", "MOF", "MOF",
            "MAN", "MAN", "MAN", "MAN", "MAN", "MAE", "MAE", "MAE", "MAE", "MAE",
            "MAC", "MAC", "MAC", "T", "T", "T", "T", "T", "CT", "CT")
  
  cantidadManosCompetitivas <- 0.0
  
  for(r in 1:repeticiones){
    mazoTemporal <- mazo
    manoTemporal <- c()
    
    for(i in 1:tamanhoMano){
      indice <- sample(1:length(mazoTemporal), 1)
      manoTemporal <- c(manoTemporal, mazoTemporal[indice])
      mazoTemporal <- mazoTemporal[-indice]
      
    }
    
    if(!("MOF" %in% manoTemporal)){
      if(!("MAE" %in% manoTemporal)){
        if(!("T" %in% manoTemporal)){
          cantidadManosCompetitivas <- cantidadManosCompetitivas + 1
        }
      }
    }
  }
  
  return(cantidadManosCompetitivas/repeticiones)
}

probabilidadEstrategiaCompetitiva(5, 500)