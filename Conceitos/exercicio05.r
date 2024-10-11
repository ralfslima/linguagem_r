# 5) Crie um vetor contendo os valores: 5, 7, 9, 4, 5, 3, 4, 2, 7
# Retorne a média dos valores, quantos e quais são os números maiores ou iguais que a média
vetor <- c(5, 7, 9, 4, 5, 3, 4, 2, 7)

# Calcular a média manualmente
soma <- 0

# Laço de repetição para somar
for (valor in vetor) {
  soma <- soma + valor
}

# Calcular a média
media <- soma / length(vetor)

# Criar a variável para armazenar a quantidade de números maiores ou iguals a média
quantidade_maiores_iguais = 0

# Laço de repetição
for (valor in vetor) {
  if (valor >= media) {
     quantidade_maiores_iguais <- quantidade_maiores_iguais + 1
    print(valor)
  }
}

# Exibir dados
print(media)
print(quantidade_maiores_iguais)