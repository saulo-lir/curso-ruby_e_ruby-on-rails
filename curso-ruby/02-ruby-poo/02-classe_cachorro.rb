class Cachorro
    attr_accessor :nome # set / get
    attr_reader :raca # get
    
    def initialize(nome, raca)
        @nome = nome
        @raca = raca
    end

    def latir(latido = "au au")
        latido
    end
end

c1 = Cachorro.new("Manson", "Rusky")
puts c1.nome
puts c1.raca
puts c1.latir

c2 = Cachorro.new("Catrina", "Pudow")
puts c2.nome
puts c2.raca
puts c2.latir("Ain Ain");