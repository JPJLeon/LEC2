win_p3 <- 0
win_o3 <- 0
win_draw3 <- 0
for(i in 1:1000){
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


print("Resultados:");
print(paste("Victorias:", win_p3   , sep=" ");
print(paste("Empates:"  , win_o3   , sep=" ");
print(paste("Derrotas:" , win_draw3, sep=" ");