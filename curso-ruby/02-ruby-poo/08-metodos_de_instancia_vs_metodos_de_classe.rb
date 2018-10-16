=begin

    def method
    end

    def self.method
    end

=end

class Teste
    # Método de instância (Para usa-lo é obrigatório instanciar a classe)
    def ola
        "Olá!"
    end

    # Método de classe (Para usá-lo NÃO é necessário instaciar a classe)
    def self.hello
        "Hello!"
    end
end

# Forma tradicional de usar um método (Método de instância)
t = Teste.new
puts t.ola

# Utilizar um método de classe (Não precisa instanciar uma classe)
puts Teste.hello 