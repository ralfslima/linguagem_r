# Referenciar biblioteca
library(rvest)

# Obter os dados
url    <- "https://worldpopulationreview.com/countries"
pagina <- read_html(url)
tabela <- html_nodes(pagina, "table")
dados  <- html_table(tabela)
df     <- as.data.frame(dados[[1]])

# Questão 1: Exibir todos os registros.
#print(df$Country, n="Inf")

# Questão 2: Obter as 10 primeiras linhas.
#print(head(df$Country, n=10))

# Questão 3: Encontrar o país mais populoso em 2023.
quantidade_populacao_2023 <- as.numeric(gsub(",","",df$"2023 Population"))
maior_populacao_2023 <- df[which.max(quantidade_populacao_2023), ]

print(paste("País com maior população em 2023:", maior_populacao_2023$Country))
print(paste("População de:", maior_populacao_2023$"2023 Population"))

# Questão 4: Soma da população da China e da Índia em 2023.
china <- as.numeric(gsub(",","",df[df$Country == "China", "2023 Population"]))
india <- as.numeric(gsub(",","",df[df$Country == "India", "2023 Population"]))
print(china+india)

# Questão 5:Criar gráfico de pizza contendo os paises mais populosos de 2023.
windows()

# Lista
top10_paises <- head(df[c("Country", "2023 Population")], n=10)

# Quantidade de pessoas por país
top10_populacao <- as.numeric(gsub(",", "", top10_paises$"2023 Population"))

# Rótulos
rotulos <- top10_paises$Country

# Gráficos
pie(top10_populacao, labels = rotulos)