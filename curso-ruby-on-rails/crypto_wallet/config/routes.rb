Rails.application.routes.draw do
  

  resources :mining_types
  resources :coins
=begin 

  O resources cria 7 rotas para o nome que definimos
  No coins por exemplo, temos as rotas:

  verbo HTTP  Path(caminho)     Controller/Ação   Descrição

  GET         /coins            coins#index       listar todas as moedas
  GET         /coins/new        coins#new         retorna o formulário html para criação de uma nova moeda
  POST        /coins            coins#create      cria uma nova moeda
  GET         /coins/:id        coins#show        exibe uma moeda específica
  GET         /coins/:id/edit   coins#edit        retorna o formulário html para editar uma moeda
  PATCH/PUT   /coins/:id        coins#update      atualiza uma foto específica
  DELETE      /coins/:id        coins#destroy     deleta uma moeda específica

=end

  # Definindo uma rota específica

  get '/inicio', to: 'welcome#index' # controller#action
  # Ou get 'welcome/index' , com apenas o nome do controller e da action

  # Definindo a rota raiz/padrão (controller#action):
  root to: 'welcome#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
