# ARGV = Argument Vector (Vetor de argumentos)
# É usado em situações que temos vários arquivos no projeto e desejamos ler um específico

=begin

1) Caso queiramos testar o ARGV, basta imprimirmos ele seguido de nomes de argumentos:
puts ARVG argumento1 argumento2 jjjj llll iiiii

2) Para ver o tamanho do vetor, fazemos: ARGV.size

=end

# Dessa forma, para abrimos um arquivo específico utilizando o ARGV, fazemos:

if ARGV.size > 0
    File.open(ARGV[0],'r') do |arq|
        while line = arq.gets
            puts line
        end
    end
else
    puts "Você deve informar o nome do arquivo a ser aberto. Ex.: ruby 02-argv.rb teste.txt"
end