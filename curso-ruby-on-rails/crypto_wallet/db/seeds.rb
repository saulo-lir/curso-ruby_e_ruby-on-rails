# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin

Esse arquivo deve conter toda a criação de registro necessária para propagar 
o banco de dados com seus valores padrão.

Os dados podem então ser carregados com o comando rails db: seed 
(ou criado ao lado do banco de dados com db: setup).

Em resumo, sempre que rodarmos o comando db:seed, estaremos executando esse arquivo e inserindo
na tabela em questão os valores informados no método create. É uma forma de trabalharmos com o 
banco de dados através do rails através de atalho sem precisar usar um gerenciador de banco de 
dados, pois o próprio rails é que faz esse gerenciamento

=end

# Criando um registro

coins = [
    {description:"Bitcoin",
    acronym: "BTC",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/5/50/Bitcoin.png"},

    {description:"Ethereum",
    acronym: "ETH",
    url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png"},

    {description:"Dash",
    acronym: "DASH",
    url_image: "https://minhamoedavirtual.com.br/wp-content/uploads/2018/04/dash-logo.png"}
]


# find_or_create_by!() = Verifica se já existe no banco os dados informados. 
# Caso não exista, serão criados
# A ! exibe um erro caso ocorra

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

=begin Forma menos dinâmica e sem verificar se os dados já existem

O create() com a ! exibe um erro caso ocorra

Coin.create!([
    {description:"Bitcoin",
    acronym: "BTC",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/5/50/Bitcoin.png"},

    {description:"Ethereum",
    acronym: "ETH",
    url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1027.png"},

    {description:"Dash",
    acronym: "DASH",
    url_image: "https://minhamoedavirtual.com.br/wp-content/uploads/2018/04/dash-logo.png"}
])

=end

puts "Dados inseridos com sucesso!"