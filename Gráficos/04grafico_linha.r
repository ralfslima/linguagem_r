# Gráfico de Linhas	type = "l"
# Gráfico de Pontos	type = "p"
# Linhas com Pontos	type = "o"
# Linhas e Pontos	type = "b"
# Linhas Sem Pontos	type = "c"
# Segmentos de Linhas	type = "s"
# Linhas Verticais	type = "h"
# Nenhum Gráfico	type = "n"

# pch	Símbolo
# 0	Círculo vazio
# 1	Círculo preenchido
# 2	Triângulo para cima
# 3	Cruz
# 4	Cruz diagonal
# 5	Quadrado preenchido
# 6	Triângulo para baixo
# 7	Triângulo apontando à esquerda
# 8	Triângulo apontando à direita
# 9	Estrela
# 10	Um X
# 11	Círculo pequeno
# 12	Círculo com borda
# 13	Triângulo de canto a canto
# 14	Triângulo de canto a canto invertido
# 15	Quadrado pequeno
# 16	Círculo sólido
# 17	Triângulo sólido
# 18	Quadrado sólido
# 19	Círculo grande sólido
# 20	Círculo grande e vazio
# 21	Círculo preenchido com borda
# 22	Quadrado preenchido com borda
# 23	Círculo pequeno com borda
# 24	Estrela com borda
# 25	Círculo pequeno vazio

# Abrir gráfico em uma nova janela
windows()

# Coordenadas para gerar o gráfico
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(1, 2, 4, 4, 6, 8, 9, 10, 11, 12)

# Gerar gráfico
plot(x, y, type="l", col="blue", lwd=2)

# Implementar gráfico
points(x, y, pch=19, col="red")