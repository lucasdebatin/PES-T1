-- Calculadora de Peso Ideal
-- Lucas Debatin Bastos
-- 10/04/2017
-- vers�o 1.0



-- fun��es auxiliares


-- Calcula �ndice de massa corporal
-- Assertivas de entrada: peso � um valor inteiro e altura � um decimal
-- Assertivas de sa�da: resultado do calculo de IMC

function IMC(peso, altura)

	valor = peso/(altura*altura)
	return valor

end

-- calcula taxa de gordura corporal
-- Assertivas de entrada: peso, sexo e idade s�o valores inteiros. Altura � um valor decimal
-- Assertivas de sa�da: resultado do calculo de taxa de gordura

function IMG(peso, altura, sexo, idade)

	imc = peso/(altura*altura)
	valor = (1.2 * imc) - (10.8*sexo) + (0.23*idade) - 5.4
	return valor
end




-- in�cio do programa - coleta dos dados do usu�rio

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


-- mostra a situa��o do usu�rio

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


