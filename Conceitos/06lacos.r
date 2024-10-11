# Laço for (para)
for(indice in 1:5){
    print(indice)
}

# Laço while (enquanto)
indice <- 1
while(indice <= 10){
    print(indice)
    indice <- indice + 1
}

# Laço repeat (repita)
indice <- 1
repeat{
    print(indice)
    indice <- indice + 1

    if(indice == 6){
        break
    }
}