#install.packages("readxl")

# Referenciar pacote readxl
library(readxl)

# Importar arquivo XLS ou XLSX
planilha <- read_excel("Planilha Simples.xlsx", sheet="Página1")

# Exibir conteúdos da planilha
print(planilha)