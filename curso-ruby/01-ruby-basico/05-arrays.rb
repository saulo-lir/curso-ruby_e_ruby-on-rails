# Inicializando um vetor

v = []

# Adicionando valor com o método push

#v.push(67)

# Removendo um valor com o método delete

#v.delete(67)

i = 1

until i == 100
    v.push(i)    
    i += 9
end

i = 0

while i < v.length # Ou v.size (Tamanho do vetor)
    puts v[i]
    i += 1
end