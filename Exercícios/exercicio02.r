# Biblioteca readxl
library(readxl)

#1° Importar o arquivo Planilha02.
df <- read_excel("Planilha02.xlsx", sheet="Tabela")

#2° Exiba todos os registros.
print(df)

#3° Como você exibiria as cinco primeiras linhas do data frame?
print(head(df, 5))

#4° Como você faria um resumo estatístico dos dados contidos na tabela?
print(summary(df))

#5° Como você mostraria apenas as vendas da categoria "Eletrônicos"?
print(df[df$Categoria == "Eletrônicos", ])

#6° Como você criaria um novo data frame que mostra a soma total das vendas por categoria?
soma <- tapply(df$Vendas, df$Categoria, sum)
df_soma_categorias <- as.data.frame(soma)
print(df_soma_categorias)

#7° Armazene em um vetor/matriz as regiões e a soma das vendas, em seguida exiba esses dados.
soma_vendas <- tapply(df$Vendas, df$Região, sum)
print(soma_vendas)

#8° Criar um gráfico de barras (barplot).
windows()
barplot(soma_vendas, col="blue")

#9° Como você calcularia a receita total (Vendas * Preço) e adicionaria uma nova coluna ao data frame?
#Dica: Ao calcular, coloque cada coluna do data frame entre: as.numeric(sua-coluna-aqui)
#df$ReceitaTotal <- as.numeric(df$Vendas) * as.numeric(df$Preço)
df$ReceitaTotal <- df$Vendas * df$Preço
print(df)

#10° Exiba a quantidade de registros.
print(nrow(df))