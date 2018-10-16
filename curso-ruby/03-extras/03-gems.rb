# Gems são bibliotecas/plugins do Ruby desenvolvidas por terceiros e disponibilizadas de graça
# Repositório oficial das gems: https://rubygems.org

# Para instalar as gems, é necessário antes ter instalado no computador 
# o gerenciador de pacotes das gems

=begin
    Exemplo de instalação de uma gem no prompt de comando:
    gem install cpf_utils 

    Caso queria remover a gem, basta fazer:
    gem unistall cpf_utils
=end

# carregar a gem instalada
require "cpf_utils"

puts CpfUtils.cpf_formatado # Gera um cpf aleatório