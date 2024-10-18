puts "Bem vindo ao jogo de advinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n"
puts "Começaremos o jogo para você, #{nome}"
puts "\n\n\n"
puts "Escolhendo um número secreto entre 0 e 200 ...."
numero_secreto = 175
puts "Escolhido .... que tal adivinha hoje nosso número secreto?"

total_de_tentativas = 3

for tentativa in 1..total_de_tentativas
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{total_de_tentativas}"
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou #{chute}"
    acertou = numero_secreto == chute.to_i
    maior = numero_secreto > chute.to_i
    if acertou
        puts "Acertou!"
        break
    else 
        if maior
        puts "O número secreto é maior"
        else  
            puts "O número secreto é menor"
        end    
    end
end    