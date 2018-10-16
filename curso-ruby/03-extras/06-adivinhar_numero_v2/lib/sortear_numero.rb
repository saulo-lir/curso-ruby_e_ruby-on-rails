class SortearNumero

    def self.sortear
        v = []

        File.open(File.expand_path('../../numeros.txt', __FILE__),'r') do |arq|
            
            # File.expand_path = cria um caminho para encontrar o arquivo
            # ../../ = Voltamos à raiz da mesma pasta que se encontra o arquivo, 
            # no caso a pasta lib, depois voltamos à pasta raiz do projeto e pegamos o arquivo
            # __FILE__ equivale ao arquivo que será aberto

            while line = arq.gets # Ler linha por linha
                v.push(line.to_i) # Adiciona no vetor o conteúdo da linha convertido para inteiro
            end

        end

        v.sample # sample = Pega um valor aleatório do array
    end

end