epiDisplay::tab1(funcionarios$grau_instrucao)
epiDisplay::tab1(funcionarios$grau_instrucao, main = "Gráfico de Barras: Grau de Instrução", ylab = "Frequência")
epiDisplay::tab1(funcionarios$grau_instrucao, main = "Gráfico de Barras: Grau de Instrução", xlab = "Frequência", horiz = TRUE, col = c("red", "green", "blue"))

pie(table(funcionarios$grau_instrucao), main = "Gráfico de Setores: Grau de Instrução", col = c("red","green","blue"))

epiDisplay::tab1(na.omit(funcionarios$n_filhos), main = "Gráfico de Barras: Número de Filhos", xlab = "Frequência", horiz = TRUE, col = c("cyan", "magenta", "yellow", "black", "white"))

pie(table(na.omit(funcionarios$n_filhos)), main = "Gráfico de Setores: Número de Filhos", col = c("cyan", "magenta", "yellow", "black", "white"))

hist(funcionarios$salario)
hist(funcionarios$salario, main = "Histograma de Salários", col = "lightgreen", xlab = "Salário", ylab = "Frequência")
n = length(funcionarios$salario)
valor_max = max(funcionarios$salario)
valor_min = min(funcionarios$salario)
R = valor_max - valor_min
K = sqrt(n)
r = R / K
quebras = valor_min + (0:ceiling(R / ceiling(r))) * ceiling(r)
hist(funcionarios$salario, main = "Histograma de Salários", col = "lightgreen", xlab = "Salário", ylab = "Frequência", breaks = quebras)
hist(funcionarios$salario, main = "Histograma de Salários", col = "lightgreen", xlab = "Salário", ylab = "Densidade", breaks = quebras, probability = TRUE, labels = TRUE)
hist(funcionarios$salario, main = "Histograma de Salários", col = "lightgreen", xlab = "Salário", ylab = "Densidade", breaks = quebras, probability = TRUE, labels = paste0(round(prop.table(hist(funcionarios$salario, breaks = quebras, plot = FALSE)$counts) * 100, 1), "%"))
