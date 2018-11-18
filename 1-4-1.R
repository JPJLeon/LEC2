
#Blur: Permite evadir un ataque oponente. La probabilidad de evasión en máximo nivel es 0.75.
#Coup de Grace: Daño masivo (450 % del original) en un ataque. La probabilidad de obtener golpe
# critico es 0.2 en máximo nivel.
#             NOMBRE,            VIDA,   ATAQUE
phantom <- c('Phantom Assassins', 1500,  122)
oponente <- c('El Otro', 4500,  366)

blur <- c("B","B","B","NB")
coupGrace <- c("NCG","NCG","NCG","NCG","CG")


batalla <- function(jug1, jug2, blurHab, cgHab){
  finish <- TRUE
  while(finish){
    bl <- sample(blur,1,replace=FALSE)
    cg <- sample(coupGrace, 1, replace=FALSE)
    #ATACANDO
    if(blurHab == TRUE){
      if(bl == 'NB'){
        jug1[2] <- as.integer(jug1[2]) - as.integer(jug2[3])
      }
    }
    else{
      jug1[2] <- as.integer(jug1[2]) - as.integer(jug2[3])
    }
    if(cg == "CG" & cgHab==TRUE){
      jug2[2] <- as.integer(jug2[2]) - as.integer(jug1[3])*4.5
    }
    else{
      jug2[2] <- as.integer(jug2[2]) - as.integer(jug1[3])
    }
    
    if(jug1[2] < 0 & jug2[2] < 0){
      finish <- FALSE
      print(paste(paste("RESULTADO: PHANTOM: ",jug1[2], sep=" "),paste("<--> EL OTRO: ",jug2[2], sep=" "), sep=" "))
      return("empate")
    }
    else if(jug2[2] < 0){
      finish <- FALSE
      print(paste(paste("RESULTADO: PHANTOM: ",jug1[2], sep=" "),paste("<--> EL OTRO: ",jug2[2], sep=" "), sep=" "))
      return("phantom")
    }
    else if(jug1[2] < 0){
      finish <- FALSE
      print(paste(paste("RESULTADO: PHANTOM: ",jug1[2], sep=" "),paste("<--> EL OTRO: ",jug2[2], sep=" "), sep=" "))
      return("other")
    }
  }
}
win_p <- 0
win_o <- 0
win_draw <- 0
for(i in 1:100){
  battle <- batalla(phantom, oponente, blurHab=TRUE, cgHab=TRUE)
  if(battle == "phantom"){
    win_p <- win_p + 1
  } 
  else if(battle == "other"){
    win_o <- win_o + 1
  }
  else{
    win_draw <- win_draw + 1
  }
}

win_p2 <- 0
win_o2 <- 0
win_draw2 <- 0
for(i in 1:100){
  battle <- batalla(phantom, oponente, blurHab=FALSE, cgHab=TRUE)
  if(battle == "phantom"){
    win_p2 <- win_p2 + 1
  } 
  else if(battle == "other"){
    win_o2 <- win_o2 + 1
  }
  else{
    win_draw2 <- win_draw2 + 1
  }
}



win_p3 <- 0
win_o3 <- 0
win_draw3 <- 0
for(i in 1:100){
  battle <- batalla(phantom, oponente, blurHab=TRUE, cgHab=FALSE)
  if(battle == "phantom"){
    win_p3 <- win_p3 + 1
  } 
  else if(battle == "other"){
    win_o3 <- win_o3 + 1
  }
  else{
    win_draw3 <- win_draw3 + 1
  }
}


laTabla = data.frame (
  cbind(
    Gano = c(win_p,win_p2,win_p3),
    Empate = c(win_draw,win_draw2,win_draw3),
    Perdio =  c(win_o, win_o2, win_o3))
  )
laTabla