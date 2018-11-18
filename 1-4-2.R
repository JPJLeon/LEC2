win_p2 <- 0
win_o2 <- 0
win_draw2 <- 0
for(i in 1:1000){
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


print("Resultados:");
print(paste("Victorias:", win_p2   , sep=" ");
print(paste("Empates:"  , win_o2   , sep=" ");
print(paste("Derrotas:" , win_draw2, sep=" ");