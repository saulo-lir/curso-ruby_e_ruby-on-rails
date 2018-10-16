# Podem ser .. (Dois pontos) ou ... (Três pontos), 
# serve para iterar entre um intervalo de números

# .. considera o último elemento do intervalo
# ... NÃO considera o último elemento do intervalo

# Ex.: Percorrer de 1 até 4

(1...5).each {|x| puts x}

# Ex.: Percorrer de 1 até 5

(1..5).each {|x| puts x}