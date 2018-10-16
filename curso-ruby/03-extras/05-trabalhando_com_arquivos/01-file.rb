# 1) Abrindo um arquivo e Inserindo conteúdo (Caso ele não exista, será criado)

# w = abrir em modo de escrita
# |arq| = nome interno que o ruby irá tratar o arquivo (Pode ser qualquer nome)


File.open('teste.txt', 'w') do |arq|
    arq.puts "Curso de Ruby"
end

# 1) Abrindo um arquivo para ler seu conteúdo

# r = abrir no modo de escrita

File.open('teste.txt','r') do |arq|
    while line = arq.gets # Ler o conteúdo escrito na linha
        puts line
    end
end