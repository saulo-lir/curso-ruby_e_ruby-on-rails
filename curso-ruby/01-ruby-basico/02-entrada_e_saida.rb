puts "Digite seu nome:"
nome1 = gets

puts "Seu nome é: "+nome1

# OBS.: A variável nome irá conter um \n no final, indicando uma quebra de linha
# Caso queiramos remover esse \n, basta usarmos o método chomp

puts "Digite outro nome:"
nome2 = gets.chomp

puts "O segundo nome é "+nome2

# Para verificar o conteúdo de uma variável, basta utilizarmos o método inspect

puts "Conteúdo das variáveis:"

puts nome1.inspect
puts nome2.inspect

# Conversão de tipos (Coerção ou casting)

=begin
puts "Digite sua idade:"
v1 = gets.chomp
v2 = v1 + 1 # Gera um erro de conversão de tipos
puts "Sua idade ano que vem será: #{v2}"
=end

# Tipos mais comuns de conversão

=begin 
    .to_i = Converte para inteiro
    .to_f = Converte para float
    .to_s = Converte para string
=end    


puts "Digite sua idade:"
v1 = gets.chomp
v2 = v1.to_i + 1 # Converte a string para inteiro
puts "Sua idade ano que vem será: #{v2}"

# Ou

puts "Digite sua idade:"
v1 = gets.chomp.to_i # Converte a string para inteiro no momento da leitura
v2 = v1 + 1 # Converte a string para inteiro
puts "Sua idade ano que vem será: #{v2}"
