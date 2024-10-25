# Referenciar biblioteca
library(rvest)

# Obter os dados
url    <- "https://ralflima.com/linguagem_r/exercicio5.html"
pagina <- read_html(url)
tabela <- html_nodes(pagina, "table")
dados  <- html_table(tabela)
#df     <- as.data.frame(dados[[1]])
df     <- as.data.frame(dados) # Apenas se a página tiver uma tabela

# Questão 1: Quantos registros existem na tabela?
print(nrow(df))

# Questão 2: Qual é a população do Brasil em 2023?
print(df[df$"País" == "Brasil" & df$Ano == 2023 ,])

#Questão 3:  Gere um gráfico de linhas que mostre a evolução da população do Brasil nos últimos 20 anos.
windows()
populacao_brasil <- as.numeric(gsub(",","",df[df$"País" == "Brasil", "População"]))
plot(populacao_brasil, type="o")

#Questão 4: Qual é o país mais populoso da tabela em 2023?
media_populacao_2023 <- mean(as.numeric(gsub(",", "", df[df$Ano == 2023, "População"])))
print(media_populacao_2023)

#Questão 5: Qual é a média da população dos países listados em 2023?
media_populacao_2023 <- mean(as.numeric(gsub(",", "", df[df$Ano == 2023, "População"])))
print(media_populacao_2023)

#Questão 6: Qual é o país mais populoso de 2009?
dados_2009 <- df[df$Ano == 2009, ]
pais_mais_populoso_2009 <- dados_2009[which.max(as.numeric(gsub(",", "", dados_2009$População))), ]
print(pais_mais_populoso_2009)

#Questão 7: Calcule o crescimento populacional do Brasil de 2022 para 2023.
ano_2023 <- as.numeric(gsub(",", "", df[df$País == "Brasil" & dados$Ano == 2023, "População"]))
ano_2022 <- as.numeric(gsub(",", "", df[df$País == "Brasil" & dados$Ano == 2022, "População"]))
print(ano_2023 - ano_2022)

#Questão 9: Qual país tem mais habitantes em 2023: Brasil ou Argentina?
populacao_argentina_2023 <- as.numeric(gsub(",", "", df[df$País == "Argentina" & df$Ano == 2023, "População"]))
populacao_brasil_2023 <- as.numeric(gsub(",", "", df[df$País == "Brasil" & df$Ano == 2023, "População"]))
print(ifelse(populacao_brasil_2023 > populacao_argentina_2023, "Brasil", "Argentina"))

#Questão 10: Quais países têm população acima de 100 milhões em 2023?
paises_acima_100milhoes_2023 <- df[df$Ano == 2023 & as.numeric(gsub(",", "", df$População)) > 100000000, ]
print(paises_acima_100milhoes_2023)