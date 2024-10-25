# Importar a biblioteca readxl
library(readxl)

#1° Importar o arquivo Planilha01.
df <- read_excel("Planilha01.xlsx", sheet="Tabela")

#2° Exiba todos os registros.
print(df)

#3° Exiba as três primeiras linhas.
print(head(df, n=3))

#4° Faça um resumo dos dados contidos na tabela.
print(summary(df))

#5° Mostrar apenas as vendas da categoria "Alimentos"?
print(df[df$Categoria == "Alimentos",])

#6° Como você criaria um novo data frame que mostra a soma total das vendas por categoria?
# tapply(Coluna utilizada para realizar o cálculo, agrupamento, cálculo)
soma_vendas <- tapply(df$Vendas, df$Categoria, sum)
df_novo <- as.data.frame(soma_vendas)
print(df_novo)

#7° Como você criaria um gráfico de pizza das vendas por produto?
windows()
pie(df$Vendas, labels=df$Produto)

#8° Como você ordenaria o data frame original pelas vendas em ordem decrescente?
#print(df[order(df$Vendas),]) Crescente
print(df[order(-df$Vendas),]) #Decrescente

#9° Como você adicionaria uma nova coluna que indica se as vendas são "Altas" (acima de 200) ou "Baixas" (200 ou menos)? Exiba o data frame.
df$NivelVendas <- ifelse(df$Vendas > 200, "Altas", "Baixas")
print(df)

#10° Exiba a quantidade de registros.
print(length(df$Produto))
print(nrow(df))