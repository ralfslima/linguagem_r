# Abrir gráfico em uma nova janela
windows()

# Vetor contendo o total vendido
vendas <- c(5000, 2700, 3850, 1800)

# Vetor contendo o nome dos vendedores
vendedores <- c("Bianca", "Rebeca", "Henrique", "Gustavo")

# Vetor de cores
cores <- c("yellow", "purple", "blue", "green")

# Criar gráfico
pie(vendas, labels=vendedores, col=cores)