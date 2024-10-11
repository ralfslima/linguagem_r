# 8) Crie um Data Frame contendo os seguintes dados:
# filme: "A Origem", ano: 2010, gênero: "Ficção Científica"
# filme: "Titanic", ano: 1997, gênero: "Romance"
# filme: "O Senhor dos Anéis: A Sociedade do Anel", ano: 2001, gênero: "Fantasia"
# filme: "O Lobo de Wall Street", ano: 2013, gênero: "Drama"
# filme: "Pulp Fiction", ano: 1994, gênero: "Crime"
# filme: "Matrix", ano: 1999, gênero: "Ficção Científica"
# filme: "Jurassic Park", ano: 1993, gênero: "Aventura"
# filme: "Gladiador", ano: 2000, gênero: "Aventura"
# filme: "Coringa", ano: 2019, gênero: "Drama"
# Exiba os dados contidos no Data Frame.
# Informe quais são os filmes de drama.
# Informe a posição do filme Matrix.

# Criar o Data Frame com os dados dos filmes
filmes <- data.frame(
  filme = c("A Origem", "Titanic", "O Senhor dos Anéis: A Sociedade do Anel", 
            "O Lobo de Wall Street", "Pulp Fiction", "Matrix", 
            "Jurassic Park", "Gladiador", "Coringa"),
  ano = c(2010, 1997, 2001, 2013, 1994, 1999, 1993, 2000, 2019),
  genero = c("Ficção Científica", "Romance", "Fantasia", 
             "Drama", "Crime", "Ficção Científica", 
             "Aventura", "Aventura", "Drama")
)

# Exibir os dados contidos no Data Frame
print(filmes)

# Informar quais são os filmes de drama
print("Filmes de Drama:")
for (i in 1:nrow(filmes)) {
  if (filmes$genero[i] == "Drama") {
    print(filmes$filme[i])
  }
}

# Informar a posição do filme "Matrix"
posicao_matrix <- NA  # Inicializar a variável
for (i in 1:nrow(filmes)) {
  if (filmes$filme[i] == "Matrix") {
    posicao_matrix <- i
    break  # Para de procurar após encontrar
  }
}

print(paste("A posição do filme 'Matrix' é:", posicao_matrix))