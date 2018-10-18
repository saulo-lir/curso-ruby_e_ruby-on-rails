class WelcomeController < ApplicationController
  def index
    # params: Contem os valores enviados nas requisições

    @nome = params[:nome] # Essa variável pode ser usada na view welcome/index.html.erb
    # Ou @nome = params se quisermos pegar todos os valores de params
  end
end
