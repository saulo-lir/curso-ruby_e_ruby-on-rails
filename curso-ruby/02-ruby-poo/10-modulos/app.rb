=begin
 Em nossa aplicação principal, devemos carregar o
 arquivo que contém os módulos que queremos utilizar

 OBS.: Devemos utilizar o require_relative para carregar o arquivo.
       Caso utilizemos apenas require, o sistema irá procurar o arquivo
       nas pastas de instalação do ruby
=end

require_relative 'pagamento' # A extensão .rb é opcional

include Pagamento # Carrega um módulo específico, no caso, o Pagamento

# OBS.: O include só é utilizado para módulos

# Carregando a classe que já foi declarada no módulo Pagamento
p = Visa.new # Ou Pagamento::Visa.new
puts p.pagando

# Imprimindo a constante que já foi declarada no módulo Pagamento
puts PI # Ou Pagamento::PI

puts "Digite a bandeira do cartão"
b = gets.chomp

puts "Digite a número do cartão"
n = gets.chomp

puts "Digite o valor da compra"
v = gets.chomp

puts pagar(b,n,v) # Ou  Pagamento.pagar(b,n,v)