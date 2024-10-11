# 2) Crie uma matriz 3x3, contendo os seguintes valores:
# 7 8 6
# 1 4 5
# 2 9 3
# Percorra a matriz e retorne a soma dos valores.

# Criar matriz
matriz = matrix(nrow=3, ncol=3)

# Informar valores
matriz[1,1] <- 7
matriz[1,2] <- 8
matriz[1,3] <- 6
matriz[2,1] <- 1
matriz[2,2] <- 4
matriz[2,3] <- 5
matriz[3,1] <- 2
matriz[3,2] <- 9
matriz[3,3] <- 3

# Variável para somar
soma <- 0

# Percorrer matriz
#for(linha in 1:3)
for(linha in 1:nrow(matriz)){
    for(coluna in 1:ncol(matriz)){
        soma <- soma + matriz[linha, coluna]
    }
}

# Exibir a soma
print(paste("A soma é: ", soma))