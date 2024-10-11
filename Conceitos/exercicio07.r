# 7) Crie uma Lista contendo os seguintes dados:
# curso: R, aluno: Jéssica, média: 8, faltas: 1
# curso: Python, aluno: Caio, média: 9, faltas: 0
# curso: Python, aluno: Larissa, média: 7, faltas: 8
# curso: Python, aluno: Bianca, média: 10, faltas: 0
# curso: R, aluno: Ricardo, média: 6, faltas: 4
# curso: SQL, aluno: Tatiana, média: 10, faltas: 0
# curso: SQL, aluno: Henrique, média: 5, faltas: 10
# curso: R, aluno: Éder, média: 9, faltas: 0
# Retorne a média das médias.
# Retorne os nomes dos alunos com faltas superiores a 3
# Retorne os alunos com média igual a 10
# Exiba a quantidade de alunos por curso

# Criar a lista de alunos
alunos <- list(
  list(curso = "R", aluno = "Jéssica", media = 8, faltas = 1),
  list(curso = "Python", aluno = "Caio", media = 9, faltas = 0),
  list(curso = "Python", aluno = "Larissa", media = 7, faltas = 8),
  list(curso = "Python", aluno = "Bianca", media = 10, faltas = 0),
  list(curso = "R", aluno = "Ricardo", media = 6, faltas = 4),
  list(curso = "SQL", aluno = "Tatiana", media = 10, faltas = 0),
  list(curso = "SQL", aluno = "Henrique", media = 5, faltas = 10),
  list(curso = "R", aluno = "Éder", media = 9, faltas = 0)
)

# Calcular a média das médias
soma_das_medias <- 0
quantidade_alunos <- 0

for (aluno in alunos) {
  soma_das_medias <- soma_das_medias + aluno$media
  quantidade_alunos <- quantidade_alunos + 1
}

media_das_medias <- soma_das_medias / quantidade_alunos

# Exibir a média das médias
print(paste("Média das médias:", round(media_das_medias, 2)))

# Retornar os nomes dos alunos com faltas superiores a 3
print("Alunos com faltas superiores a 3:")
for (aluno in alunos) {
  if (aluno$faltas > 3) {
    print(paste("-", aluno$aluno))
  }
}

# Retornar os alunos com média igual a 10
print("Alunos com média igual a 10:")
for (aluno in alunos) {
  if (aluno$media == 10) {
    print(paste("-", aluno$aluno))
  }
}

# Contar e exibir a quantidade de alunos por curso
print("Quantidade de alunos por curso:")

# Contadores
linguagemR = 0
linguagemPython = 0
linguagemSQL = 0

for (aluno in alunos) {
  curso <- aluno$curso
  
  if(curso == "R"){
    linguagemR <- linguagemR + 1
  }else 
  if(curso == "R"){
    linguagemPython <- linguagemPython + 1
  }else{
    linguagemSQL <- linguagemSQL + 1
  }
}

print(paste("R:", linguagemR))
print(paste("Python:", linguagemPython))
print(paste("SQL:", linguagemSQL))