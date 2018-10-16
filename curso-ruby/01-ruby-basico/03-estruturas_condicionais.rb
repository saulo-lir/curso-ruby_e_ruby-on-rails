
# 1) if , elsif, else

puts "Digite um número"
n = gets.chomp.to_i

if n > 10 # O then é opcional, Ex.: if n > 10 then
    puts "O número digitado é maior que 10"

elsif n >= 5
    puts "O número digitado está entre 5 e 10"

else
    puts "O número digitado é menor ou igual a 5"

end # É necessário finalizar a estrutura condicional

# 2) unless

puts "Digite outro número"
n2 = gets.chomp.to_i

unless n2 >= 10 # A menos que o n2 seja maior que 10, faça algo
    puts "O número digitado é menor que 10"
else
    puts "O número digitado é maior que 10"
end    

# 3) case, when

puts "Escolha um número entre 1 e 5"
n3 = gets.chomp.to_i

case n3 
    when 1 # Quando n3 for = 1
        puts "Você escolheu opção 1"
    when 2 # Quando n3 for = 2
        puts "Você escolheu opção 2"
    when 3 # Quando n3 for = 3
        puts "Você escolheu opção 3"
    when 4 # Quando n3 for = 4
        puts "Você escolheu opção 4"
    when 5 # Quando n3 for = 5
        puts "Você escolheu opção 5" 
    else # Define um valor padrão caso nenhuma condição seja satisfeita
        puts "Você não digitou entre 1 e 5"                            
end     

# 3) Estrututa condicional Ternária: 
#   <condição> ? <verdadeiro> : <falso>

sexo = 'M'

=begin
    if sexo == 'M'
        puts 'Masculino'
    else
        puts 'Feminino'
    end
=end

sexo == 'M' ? 'Masculino' : 'Feminino' # Forma Ternária

#Ou sexo == 'M' ? (puts 'Masculino') : (puts 'Feminino')

# 5) Operadores lógicos

# '&&' ou 'and' = E
# '||' ou 'or' = OU
# '!' ou 'not'= NEGAÇÃO

v1 = 34
v2 = 56
v3 = 2
v4 = 7

# &&
if (v1 < v2) && (v3 < v4)
    puts "Condições atendidas nos dois casos"
else
    puts "Condições Não atendidas nos dois casos"
end    

# ||
if (v1 < v2) || (v3 > v4)
    puts "Pelo menos UMA condição foi atendida"
else
    puts "Condições Não atendidas nos dois casos"
end

# !
if !(v3 > v4)
    puts "Negação Atendida"
else
    puts "Negação Não Atendida"
end
