-- Calculadora de Peso Ideal
-- Lucas Debatin Bastos
-- 10/04/2017
-- versão 1.0



-- funções auxiliares


-- Calcula índice de massa corporal
-- Assertivas de entrada: peso é um valor inteiro e altura é um decimal
-- Assertivas de saída: resultado do calculo de IMC

function IMC(peso, altura)

	valor = peso/(altura*altura)
	return valor

end

-- calcula taxa de gordura corporal
-- Assertivas de entrada: peso, sexo e idade são valores inteiros. Altura é um valor decimal
-- Assertivas de saída: resultado do calculo de taxa de gordura

function IMG(peso, altura, sexo, idade)

	imc = peso/(altura*altura)
	valor = (1.2 * imc) - (10.8*sexo) + (0.23*idade) - 5.4
	return valor
end




-- início do programa - coleta dos dados do usuário

print("Indique qual o seu sexo - 0 para feminino, 1 para masculino")

sexo = io.read()

if(sexo ~= "0" and sexo ~= "1") then --caso o parametro seja invalido, termina o programa
	print("parametro invalido")
	return
end

print("Digite seu peso em kgs")

peso = io.read()

print("Digite sua altura em metros")

altura = io.read()

print("Digite sua idade")

idade = io.read()

massa_corporal = IMC(peso, altura) --variavel que guarda o resultado do calculo

gordura_corporal = IMG(peso, altura, sexo, idade) --variavel que guarda o resultado do calculo


-- mostra a situação do usuário

print("seu indice de massa corporal: ".. massa_corporal.."%")
print("sua taxa de gordura corporal: " .. gordura_corporal.."%")

if(massa_corporal < 18.4) then
	print("Voce esta abaixo do peso!")

elseif(massa_corporal >= 18.5 and massa_corporal <= 24.9) then
	print("Seu peso esta normal.")

elseif(massa_corporal >= 25.0 and massa_corporal <= 29.9) then
	print("Voce esta com sobrepeso.")

elseif(massa_corporal >= 30.0 and massa_corporal <= 34.9) then
	print("Voce esta com Obesidade Grau I!")

elseif(massa_corporal >= 35.0 and massa_corporal <= 39.9) then
	print("Voce esta com Obesidade Grau II!")

elseif(massa_corporal >= 40) then
	print("Voce esta com Obesidade Grau III!")
end


