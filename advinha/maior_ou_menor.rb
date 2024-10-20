# functions
def da_boas_vinda
    puts "Bem vindo ao jogo de advinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    puts "\n\n\n"
end

def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200 ...."
    numero_secreto = 175
    puts "Escolhido .... que tal adivinha hoje nosso número secreto?"
    return numero_secreto
end

def pede_um_numero(chutes, tentativa, total_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{total_tentativas}"
    puts "Chutes até agora: "+chutes.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou #{chute}"
    chute.to_i
end

def verificar_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute.to_i
    if acertou
        puts "Acertou!"
        return true
    else 
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior"
        else  
            puts "O número secreto é menor"
        end    
    end

    false
end

da_boas_vinda
numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 3
chutes = []

for tentativa in 1..limite_de_tentativas
    # total_de_chutes = 0
    chute = pede_um_numero chutes, tentativa, limite_de_tentativas
    # chutes[chutes.size] = chute
    # total_de_chutes += 1
    chutes << chute
    if verificar_se_acertou numero_secreto, chute
        break 
    end
end    