# 1) Crie um vetor contendo os valores: 8, 10, 15, 7, 16 e 19
# Retorne os números que são pares.

# Criar vetor
numeros <- c(8, 10, 15, 7, 16, 19)

# Laço de repetição para percorrer o vetor
for(n in numeros){
    # Condicional para verificar se o número é par
    if(n %% 2 == 0){
        print(paste(n, "é par"))
    }
}