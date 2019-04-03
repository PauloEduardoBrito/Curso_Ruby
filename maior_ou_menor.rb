def da_boas_vindas #definindo uma função
    puts "bem vindo ao jogo da advinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip   #esperando uma entrada recebendo na variavel nome
    puts "\n" #Pula linha (new line) (\n\n\n\n\n) cada "n" pula uma linha
    puts "Começaremos o jogo para você, #{nome}"
end
def sorteia_numero_secreto
    puts " Escolhendo um numero secreto entre 0 e 200..."
    sorteado= 175
    puts "ESCOLHIDO...que tal adivinhar hoje nosso numero secreto?"   
    sorteado
end
def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Entre com o numero"
    chute = gets.strip
    puts "Será que você acertou? Você chutou #{chute}"
    chute.to_i
end
def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute.to_i
    if acertou
        puts "Acertou"
        return true
    end
        maior = numero_secreto > chute.to_i
    if maior
        puts "O núumero secreto é maior!"
    else    
        puts "O número secreto é menor!"
    end
    false
end

da_boas_vindas  #Envocando a função dar_boas_vindas
numero_secreto =sorteia_numero_secreto
limite_de_tentativas = 5  #lopping de até 5 tentativas
chutes = []

for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero chutes, tentativa, limite_de_tentativas
    chutes << chute
if verifica_se_acertou numero_secreto, chute # verificando se acertou
    break
   end   
end

