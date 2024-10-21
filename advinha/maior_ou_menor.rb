# functions
def da_boas_vinda
    puts "Bem vindo ao jogo de advinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    puts "\n"
end

def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200 ...."
    sorteado = rand(200)
    puts "Escolhido .... que tal adivinha hoje nosso número secreto?"
    return sorteado
end

def pede_um_numero(chutes, tentativa, total_tentativas)
    puts "\n"
    puts "Tentativa #{tentativa} de #{total_tentativas}"
    puts "Chutes até agora: "+chutes.to_s
    puts "Entre com o número"
    chute = gets
    # puts "Será que acertou? Você chutou #{chute}"
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
pontos_ate_agora = 1000

for tentativa in 1..limite_de_tentativas
    chute = pede_um_numero chutes, tentativa, limite_de_tentativas
    chutes << chute
    pontos_a_perder = (chute - numero_secreto) * 0.5
    pontos_a_perder = -pontos_a_perder if pontos_a_perder < 0
    pontos_ate_agora -= pontos_a_perder / 2.0

    if verificar_se_acertou numero_secreto, chute
        break 
    end
end    

puts "\n\n\n"
puts "Sua tentativas #{chutes}"
puts "O número sorteado era #{numero_secreto}"
puts "Você ganhou  #{pontos_ate_agora} pontos."