# Definimos a herança fazendo utilizando o sinal '<'
# ClasseFilha < ClassePai

class Pai
    attr_accessor :nome

    def falar(texto = "Alô!")
        texto
    end
    
end 

class Filha < Pai     
end

p = Pai.new
p.nome = "Gandalf"

puts p.nome
puts p.falar

puts "__________________________"

f = Filha.new
f.nome = "bilbo"

puts f.nome
puts f.falar("Hellow World!")