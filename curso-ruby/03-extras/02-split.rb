# O método split pode ser aplicado à qualquer string
# Ele divide uma string e salva as suas partes num array
# Por padrão, a string será separada nos espaços

nome = "Gandalf Cinzento".split
puts nome.inspect # ["Gandalf", "Cinzento"] 

# Separar a string onde não tiver espaço
nome = "Gandalf".split('')
puts nome.inspect # ["G", "a", "n", "d", "a", "l", "f"]

# Separar a string à partir do caractere informado
nome = "Ga/ndal/f".split("/")
puts nome.inspect # ["Ga", "ndal", "f"]