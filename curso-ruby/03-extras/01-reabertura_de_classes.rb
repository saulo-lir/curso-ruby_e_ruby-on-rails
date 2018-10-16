# Reabertura de classe, também chamado de Monkey Patch

# Reabrimos uma classe existente quando queremos alterar seu conteúdo, 
# inserindo por exemplo um novo método ou alterando ele 

#Ex.: Redefinir/Reabrir a classe nativa String

class String
    def falar(palavra = "oi")
        "Falando... #{palavra}"
    end
end

x = "Olá"

puts x.falar # Utilizando o método que inserimos na classe nativa String