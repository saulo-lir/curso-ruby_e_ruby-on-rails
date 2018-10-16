# 1) Definindo uma classe

class Conta

    # Conteúdo...

end

# 2) Instanciando uma classe

obj1 = Conta.new

# 3) Definindo métodos

class Pessoa

    # Utilizamos o def para criar um método
    def gritar 
        puts "Uaaaaaaa!"
    end

    def agradecer(texto)
        puts texto
    end

    def comer(comida = "Pizza") #Definindo um valor padrão para o parâmetro
        puts "Hoje vou comer #{comida}"
    end

    # Retornando valores
    def estudar(assunto)
        "Hoje irei estudar #{assunto}" # O uso do return é OPCIONAL
    end
end

p = Pessoa.new
p.gritar
p.agradecer("Valeu!")

result = p.estudar("Ruby") # Ou puts p.estudar("Ruby")
puts result

#OBS.: Para métodos com nomes compostos, existe uma convenção 
# para utilizar o snake_case (nome_do_meu_metodo())

# 4) Definindo atributos

=begin 

Variável de instância: @variavel
Cada objeto irá conter uma variável única

=end

class Pessoa2

    @nome = nil
    @idade = nil

    def guardar_nome(nome)
        @nome = nome
    end

    def mostrar_nome()
        @nome
    end

    def guardar_idade(idade)
        @idade = nome
    end

    def mostrar_idade()
        @idade
    end

    # Convenção set/get para ruby

    # set
    def nome=(nome)
        @nome = nome
    end

    #get
    def nome
        @nome
    end

    # set
    def idade=(idade)
        @idade = idade
    end

    #get
    def idade
        @idade
    end

end

p = Pessoa2.new
p.guardar_nome("Gandalf")
p.guardar_idade(1000)

puts p.mostrar_nome
puts p.mostrar_idade

# Utilizando os métodos no padrão set/get Ruby

p.nome = "Gandalf"
p.idade = 1000

puts p.nome
puts p.idade


# 5) Utilizando os Acessores do Ruby

# Acessores substituem os sets e gets que são tão repetitivos
# Então basta declararmos os acessores nos atributos da classe e utiliza-los normalmente

=begin 

Os acessores são:

attr_reader :v = Permite apenas a leitura/exibição do atributo (get)
attr_writer :v = Permite apenas a escrita/modiicação do atributo (set)
attr_accessor :v = Permite a leitura e escrita do atributo (set / get)

=end

class Pessoa3
    attr_accessor :nome
    attr_writer :idade
    attr_reader :sexo

end

# Utilizamos os métodos da mesma forma:

p = Pessoa3.new

p.nome = "Gandalf"
puts p.nome


# 6) Construtores

class Pessoa4
    attr_accessor :nome
    attr_accessor :idade

    # Criando um construtor
    # Ao instaciar essa classe, automaticamente os atributos nome e idade já virão preenchidos
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

end

p = Pessoa.new("Gandalf",1000)
puts p.nome
puts p.idade