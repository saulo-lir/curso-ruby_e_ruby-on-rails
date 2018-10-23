class WelcomeController < ApplicationController
  def index

    # Definindo um cookie
    cookies[:curso] = "Curso de Ruby on Rails (Isso é um COOKIE)"

    # Definindo uma sessão
    session[:curso] = "Curso de Ruby on Rails (Isso é uma SESSION)"

    # params: Contem os valores enviados nas requisições

    @nome = params[:nome] # Essa variável pode ser usada na view welcome/index.html.erb
    # Ou @nome = params se quisermos pegar todos os valores de params
  end
end
