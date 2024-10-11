# 3) Crie uma Lista contendo os seguintes dados:
# nome: João, turno: matutino, notas 7, 8, 9
# nome: Gabriela, turno: vespertino, notas: 9, 10, 10
# nome: Vinícius, turno: matutino, notas: 10, 10, 9
# nome: Letícia, turno: matutino, notas: 8, 7, 7
# nome: Cleber, turno: vespertino, notas: 6, 7, 7
# nome: Luciana, turno: vespertino, notas: 9, 9, 7
# nome: Gilson, turno: matutino, notas: 7, 7, 7
# nome: Vanessa, turno: matutino, notas: 5, 6, 5

# Retorne o nome e a média dos alunos.
# Retorne também a quantidade de alunos nos turnos matutino e vespertino.

# Lista de alunos
alunos <- list(
  list(nome = "João",     turno = "matutino",    notas = c(7, 8, 9)),
  list(nome = "Gabriela", turno = "matutino",    notas = c(9, 10, 10)),
  list(nome = "Vinícius", turno = "vespertino",  notas = c(10, 10, 9)),
  list(nome = "Letícia",  turno = "matutino",    notas = c(8, 7, 7)),
  list(nome = "Cleber",   turno = "vespertino",  notas = c(6, 7, 7)),
  list(nome = "Luciana",  turno = "vespertino",  notas = c(9, 9, 7)),
  list(nome = "Gilson",   turno = "matutino",    notas = c(7, 7, 7)),
  list(nome = "Vanessa",  turno = "matutino",    notas = c(5, 6, 5))
)

# Contadores de turnos
matutino <- 0
vespertino <- 0

# Listar nomes e médias
for(aluno in alunos){

  # Contabilizar turnos
  if(aluno$turno == "matutino"){
    matutino <- matutino + 1
  }else{
    vespertino <- vespertino + 1
  }

  # Realizar média
  media <- (aluno$notas[1] + aluno$notas[2] + aluno$notas[3]) / 3

  # Exibir nome e média
  print(paste("Nome:", aluno$nome))
  print(paste("Média:", round(media,2)))
}

# Exibir a quantidade de alunos por turno
print(paste("Matutino:",matutino))
print(paste("Vespertino:",vespertino))
