class Inicializacao

    # Já que se trata de um método estático, então podemos utilizar o self 
    # para chama-lo sem precisar instanciar a classe (Método de classe)

    def self.inicializando

        # Executando comando do sistema operacional (Nesse caso Linux)
        system('clear') # Limpa a tela do prompt

        print "Inicializando." # O print imprime e não pula 1 linha
=begin        
        sleep 1 # Pausa a execução em 1 segundo 
        print "."
        sleep 1
        print "."
        sleep 1
        puts "."
=end
        # Forma reduzida
        4.times do |i|
            sleep 1 # Pausa a execução em 1 segundo 
            print "."
        end
            puts "."
            system('clear')
    end

end