# As variáveis são declaradas com letras minúsculas
# As constantes são declaradas com letras MAIÚSCULAS
# As constantes não mudam o valor em todo o sistema

# Definindo uma classe constante
class Teste
    PI = 3.14
    NOME_APP = "Sistema de CRM"
    NOME_CLIENTE = "Fulano de Tal"
end

puts Teste::PI
puts Teste::NOME_CLIENTE
puts Teste::NOME_APP