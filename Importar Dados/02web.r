# install.packages("rvest")

# Referenciar biblioteca rvest
library(rvest)

# Especificar URL
url <- "https://pt.wikipedia.org/wiki/Lista_de_pa%C3%ADses_por_popula%C3%A7%C3%A3o"

# Armazenar todo o conteúdo da página
pagina <- read_html(url)

# Extrair a tabela
tabela <- html_nodes(pagina, "table")

# Selecionar tabela e armazenar em um data frame
dados <- html_table(tabela[[1]])

# Listar dados
print(dados[c("País (ou território dependente)", "Estimativa da ONU")], n=Inf)

# Vetor contendo a quantidade de população por país
populacao <- as.numeric(gsub(" ", "", dados$"Estimativa da ONU"))

# Soma da população
print(paste("A soma da população é", sum(populacao)))