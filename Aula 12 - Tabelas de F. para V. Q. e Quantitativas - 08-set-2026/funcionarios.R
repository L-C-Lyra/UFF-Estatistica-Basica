install.packages("epiDisplay")

t_grau_instrucao = epiDisplay::tab1(funcionarios$grau_instrucao)
write.csv2(t_grau_instrucao[["output.table"]], file = "t_grau_instrucao.csv")

t_estado_civil = epiDisplay::tab1(funcionarios$estado_civil)
write.csv2(t_estado_civil[["output.table"]], file = "t_estado_civil.csv")

classes_salario = cut(funcionarios$salario, breaks = c(4,8,12,16,20,24), right = FALSE)
t_salario = epiDisplay::tab1(classes_salario)
write.csv2(t_salario[[2]], file = "t_salario.csv")

n = length(funcionarios$idade_anos)
valor_max = max(funcionarios$idade_anos)
valor_min = min(funcionarios$idade_anos)
R = valor_max - valor_min
K = sqrt(n)
r = R / K
quebras = valor_min + (0:ceiling(R / ceiling(r))) * ceiling(r)

classes_idade_anos = cut(funcionarios$idade_anos, breaks = quebras, right = FALSE)
t_idade_anos = epiDisplay::tab1(classes_idade_anos)
write.csv2(t_idade_anos[[2]], file = "t_idade_anos.csv")
