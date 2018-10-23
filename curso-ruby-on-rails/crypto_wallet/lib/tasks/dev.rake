# Este arquivo define uma task para ser usada através do comando rails dev:nome_da_task
# Para ver essa task e sua descrição funcionando no prompt de comando, rodamos: rails -T
# Por questões de segurança, esse arquivo só deve ser executado se estiver no 
# modo de desenvolvimento

namespace :dev do

  # Task 1
  desc "Configura o ambiente de desenvolvimento" # Descrição da task
  task setup: :environment do

    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Executando tarefas") # Utilizando a gem spinner
      spinner.auto_spin

      # %x() = executa um comando no terminal do sistema operacional
      %x(rails db:drop db:create db:migrate db:seed)

      spinner.success('(Concluído com sucesso!)')
    else
      puts "Você não está no ambiente de desenvolvimento :/"
    end

  end

=begin
  # Task 2
  desc "Cadastra as moedas"
  task add_coins: :environment do
  
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
  
  end
=end
end
