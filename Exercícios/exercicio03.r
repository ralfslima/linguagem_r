# Importar biblioteca
library(readxl)

# Exibir o gráfico em uma nova janela
windows();

#1°Importar o arquivo Planilha02
df <- read_excel("Planilha03.xlsx", sheet = "Tabela")

#2° Exibir todos os registros
print(df)

#3° Como você exibiria as cinco primeiras linhas do data frame?
print(head(df, n = 5))

#4° Como você faria um resumo estatístico dos dados contidos na tabela?
print(summary(df))

#5° Como você mostraria apenas as notas do aluno "Maria"?
print(df[df$Aluno == "Maria", ])

#6° Como você calcularia a média das notas em Matemática?
media_matematica <- mean(df$Matemática)
print(media_matematica)

#7° Como você retornaria o aluno com a menor nota em Ciências do segundo semestre?
df_segundo_semestre <- df[df$Semestre == 2, ]
aluno_menor_ciencias <- df_segundo_semestre[which.min(df_segundo_semestre$Ciências), ]
print(aluno_menor_ciencias$Aluno)

#8° Como você calcularia a nota máxima obtida em cada disciplina?
#Dica: Pesquise pela função sapply
notas_maximas <- sapply(df[,-1], max)
print(notas_maximas)

#9° Como você identificaria qual aluno teve a melhor nota em Matemática?
#Dica: Utilize a função which.max
melhor_aluno_mat <- df[which.max(df$Matemática), ]
print(melhor_aluno_mat)

#10° Como você contaria quantos alunos tiveram nota superior a 8 em História?
alunos_historia_altas <- sum(df$História > 8)
print(alunos_historia_altas)