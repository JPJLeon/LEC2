m2 <- cbind(
        Gano = c(win_p,win_p2,win_p3),
        Empate = c(win_draw,win_draw2,win_draw3),
        Perdio =  c(win_o, win_o2, win_o3)
        )

rownames(m2) <- c("Blur + Coup Grace","Coup Grace","Blur")
laTabla = data.frame (m2)
laTabla