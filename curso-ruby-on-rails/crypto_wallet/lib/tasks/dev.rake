# Este arquivo define uma task para ser usada através do comando rails dev:setup
# Para ver essa task e sua descrição funcionando no prompt de comando, rodamos: rails -T
# Por questões de segurança, esse arquivo só deve ser executado se estiver no 
# modo de desenvolvimento

namespace :dev do
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

end
