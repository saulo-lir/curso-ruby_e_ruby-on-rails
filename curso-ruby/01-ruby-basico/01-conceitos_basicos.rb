# 1) Hellow World

puts "Olá Mundo!"
puts "#{1 + 2}" # Considera a operação matemática
puts "{1 + 2}" # Interpreta como texto

# O puts imprime a saída e pula uma linha

# 2) Exibir de qual classe/tipo pertence o valor ou variável

puts 23.class # Imprime "Integer"
puts '@'.class # Imprime "String"
puts true.class # Imprime "TrueClass"
puts false.class # Imprime "FalseClass"

# OBS.: Na versão 2.3 e inferior do ruby, o integer se chama Fixnum

# 3) Concatenação

puts '3' + '1' + ' Um nome qualquer' # Imprime 31
# OBS.: Concatenar com o + gera um novo endereço de memória para o novo objeto

# A melhor forma de concatenar strings é fazendo a interpolação:

nome1 = 'Gandalf'

puts "Olá, #{nome1}, como vai?"

# OBS.: As aspas duplas é que permite a interpolação de strings, variáveis e código ruby em geral, o mesmo não acontce com as aspas simples

# 4) Variáveis (Não é necessário declarar o tipo)

v1 = 1000
n1 = 'Gandalf'


# 4) Comentário de mútiplas linhas

=begin
puts 23.class # Imprime "Integer"
puts '@'.class # Imprime "String"
puts true.class # Imprime "TrueClass"
puts false.class # Imprime "FalseClass"
=end

# 5) Operadores aritméticos

# '+' = Soma
# '-' = Subtração
# '*' = Multiplicação
# '/' = Divisão
# '%' = Módulo (O resultado é o resto da divisão), Ex.: 5 % 2 = 1
# '**' = Exponenciação, Ex.: 2 ** 3 = 8

# 6) Operadores Relacionais

# '>' = Maior que
# '<' = Menor que
# '>=' = Maior ou igual
# '<=' = Menor ou igual
# '==' = Igual
# '!=' = Diferente
# '<=>' = Spaceship = Usado para dados espaciais, o resultado sempre será -1, 0 ou 1
#        Ex.: 1 <=> 2 = -1, 2 <=> 2 = 0, 2 <=> 1 = 1

# 7) Operadores de atribuição

# '=' = Receber um valor
# '+=' = Receber um valor incrementando na variável.
# '-=' = Receber um valor decrementando na variável.
# '*=' = Receber um valor multiplicando na variável.
# '/=' = Receber um valor dividindo na variável.
# '%=' = Receber um valor tirando o módulo na variável.
# '**=' = Receber um valor fazendo a exponeciação na variável.

# 8) O tipo nil equivale a nulo