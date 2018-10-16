# Qualquer elemento escrito após os : (dois pontos) pode ser um símbolo

# Pegando o endereço de memória de um elemento

endereco = "Gandalf".object_id
puts endereco

=begin

O posicionamento é feito de forma dinâmica, então sempre que o 
programa é executado, um outro espaço de memória é alocado para 
o elemento em questão

Isso não acontece com os símbolos, pois o uma vez alocado 
um espaço na memória para eles, ele sempre estará com esse 
mesmo símbolo em toda a execução do pragrama

=end

# Os símbolos são usado portanto como identificadores únicos (ids)
# São muito utilizados com hashes

h = {a: 123, b: '456'}

# Transformar um elemento em símbolo

s = 'texto'
s = s.to_sym

puts s.class
