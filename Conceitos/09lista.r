# Criar uma lista
pessoa <- list(
    nome="João", 
    idade=22, 
    altura=1.72, 
    notas=c(7, 9, 10)
)

# Exibir característica
print(paste("O nome da pessoa é:", pessoa$nome))
print(paste("A primeira nota é:", pessoa$notas[1]))

# Exibir lista
print(pessoa)