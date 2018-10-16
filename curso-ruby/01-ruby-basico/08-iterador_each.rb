# Usado em conjunto com arrays e hashes para interagir com cada elementos deles

a = [1, 34, 56, 17]

# Primeira forma de utilizar (Iterar em apenas uma linha)

a.each {|x| puts x} # Pega cada valor do array, chama ele de x e imprime esse valor

# Segunda forma de utilizar (Iterar qundo existe mais de uma linha na estrutura de repetição)

a.each do |x|
    puts x
    puts x * 2
    puts x * 3
end    