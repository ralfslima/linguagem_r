# 4) Crie um Data Frame contendo os seguintes dados:
# produto: iPhone 16, valor: 8900, marca: Apple
# produto: Galaxy S24, valor: 5900, marca: Samsung
# produto: Monitor 24 polegadas, valor: 998, marca: Dell
# produto: Mouse sem fio, valor: 70, marca: HP
# produto: Teclado, valor: 210, marca: Microsoft
# produto: Monitor Gamer 27 polegadas, valor: 3200, marca: LG
# produto: iPhone 15, valor: 6800, marca: Apple
# produto: Galaxy S23, valor: 3000, marca: Samsung
# produto: Televisão 64 polegadas, valor: 4900, marca: Samsung

# Exiba os dados contidos no Data Frame.
# Implemente um factor para listar as marcas sem repetição e em ordem alfabética.

# Data Frame
produtos <- data.frame(
  produto = c("iPhone 16", "Galaxy S24", "Monitor 24 polegadas", "Mouse sem fio", "Teclado", "Monitor Gamer 27 polegadas", "iPhone 15", "Galaxy S23", "Televisão 64 polegadas"),
  valor = c(8900, 5900, 998, 70, 210, 3200, 6800, 3000, 4900),
  marca = factor(c("Apple", "Samsung", "Dell", "HP", "Microsoft", "LG", "Apple", "Samsung", "Samsung"))
)

# Exibir dados
print(produtos)

# Exibir marcas sem repetição e em ordem alfabética
print(levels(produtos$marca))