# 6) Crie uma matriz 5x5, contendo os seguintes valores:
# 7 8 5 4 6 
# 1 2 4 1 5
# 2 9 8 9 3
# Percorra a matriz e retorne a quantidade de números pares e ímpares

# Criar a matriz 5x5 (Essa maneira é mais compacta do que vimos na aula)
matriz <- matrix(c(
   7, 8, 5, 4, 6, 
   1, 2, 4, 1, 5,
   2, 9, 8, 9, 3,
   1, 9, 4, 1, 5,
   7, 3, 8, 1, 3
))

# Inicializar contadores
quantidade_pares <- 0
quantidade_impares <- 0

# Percorrer a matriz
for (i in 1:nrow(matriz)) {
  for (j in 1:ncol(matriz)) {
    if (matriz[i, j] %% 2 == 0) {
      quantidade_pares <- quantidade_pares + 1  # Contar pares
    } else {
      quantidade_impares <- quantidade_impares + 1  # Contar ímpares
    }
  }
}

# Resultados
print(paste("Quantidade de números pares:", quantidade_pares))
print(paste("Quantidade de números ímpares:", quantidade_impares))
