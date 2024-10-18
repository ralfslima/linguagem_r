# Abrir gráfico em uma nova janela
windows()

# Vetor contendo a quantidade de produtos em estoque
produtos <- c(450, 380, 520, 250)

# Vetor contendo os nomes dos produtos
nomes <- c("TV", "Mouse", "Teclado", "Ventilador")

# Vetor de cores
cor <- c("blue", "red", "black", "gray")

# Criar gráfico
barplot(produtos, names.arg=nomes, col=cor, main="Quantidade em estoque")