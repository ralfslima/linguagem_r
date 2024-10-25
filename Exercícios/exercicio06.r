# Carregar a biblioteca necessária
library(rvest)

# Obter os dados
url <- "https://ralflima.com/linguagem_r/exercicio6.html"
pagina <- read_html(url)
tabela <- html_node(pagina, "table")
dados <- as.data.frame(html_table(tabela))

# Questão 1: Exibir os dados
print(dados)

# Questão 2: Quantos registros existem na tabela?
print(nrow(dados))

# Questão 3: Qual é o salário médio do médico?
salario_medico <- dados[dados$Profissão == "Médico", ]
print(salario_medico)

# Questão 4: Gere um gráfico de barras mostrando os salários por profissão.
# Limpar o símbolo de R$ e converter para numérico
salarios <- as.numeric(dados$`Salário Médio`)

barplot(salarios, names.arg = dados$Profissão, las = 2, col = "blue",
        main = "Salário Médio por Profissão", ylab = "Salário Médio (R$)", 
        cex.names = 0.7)

# Questão 5: Qual profissão tem o maior salário médio?
profissao_mais_alta <- dados[which.max(salarios), ]
print(profissao_mais_alta)

# Questão 6: Qual é a média de salário das profissões listadas?
media_salario <- mean(salarios, na.rm = TRUE)
print(media_salario)

# Questão 7: Quais profissões têm salário entre 10.000 e 15.000?
profissoes_entre_10000_15000 <- dados[dados$`Salário Médio (R$)` > 10000 & dados$`Salário Médio (R$)` <= 15000, ]
print(profissoes_entre_10000_15000)

# Questão 8: Qual é a profissão com o menor salário médio?
profissao_menor_salario <- dados[which.min(salarios), ]
print(profissao_menor_salario)

# Questão 9: Quantidade de profissões da área de saúde
profissao_salario_superior_5000 <- dados[dados$`Salário Médio (R$)` > 5000, ]
print(profissao_salario_superior_5000)

# Questão 10: Qual profissão tem um salário superior a R$5.000?
profissao_salario_superior_5000 <- dados[salarios > 5000 ]
print(profissao_salario_superior_5000)

# Questão 11: Quais áreas têm mais de 5 profissões listadas?
tabela_areas <- table(dados$Área)
areas_maior_5 <- names(tabela_areas)[which(tabela_areas > 5)]
print(areas_maior_5)