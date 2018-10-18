class CoinsController < ApplicationController
  # Definindo um layout
  layout "layout_teste"

=begin 

  before_action :set_coin = Antes de executar uma ação, execute o método set_coin, somente
  nos métodos show, edit, update, destroy

=end

  before_action :set_coin, only: [:show, :edit, :update, :destroy]

  # GET /coins
  # GET /coins.json
  def index
    @coins = Coin.all # Pega todos os elementos da tabela coins
  end

  # GET /coins/1
  # GET /coins/1.json

  # O método set_coin está sendo usado antes dessa action ser executada
  def show
  end

  # GET /coins/new
  def new
    # Instanciando Coin para deixar a variável @coin pronta para ser preenchida 
    # com novos valores e serem adicionados no banco
    # Estamos preparando também para que  helper de formulário conheça esses dados
    @coin = Coin.new
  end

  # GET /coins/1/edit

  # O método set_coin está sendo usado antes dessa action ser executada
  def edit
  end

  # POST /coins
  # POST /coins.json
  def create
    @coin = Coin.new(coin_params) # coin_params é o método declarado no final desse controller

    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: 'Coin was successfully created.' }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coins/1
  # PATCH/PUT /coins/1.json

  # O método set_coin está sendo usado antes dessa action ser executada
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: 'Coin was successfully updated.' }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1
  # DELETE /coins/1.json

  # O método set_coin está sendo usado antes dessa action ser executada
  def destroy

    @coin.destroy #@coin está vindo do método set_coin que foi executado antes dessa action

    # Envia um retorno ao usuário
    # coins_url é a index
    # notice: Vatiável que irá conter a mensagem de retorno ao usuário
    # format trata-se dos formatos de retorno da página que podem ser html ou json
    respond_to do |format|
      format.html { redirect_to coins_url, notice: 'Coin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private # Todos os métodos que estão abaixo do private só podem ser usados por essa classe

    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      # Seleciona uma moeda a partir do seu id
      @coin = Coin.find(params[:id]) #:id está definido no mapeamento das rotas
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coin_params

      # params = variável global que contém todos os campos preenchido no formulário

      # require(:coin) = captura a chave coin definida no form helper que contem os valores 
      #do formulário

      # permit = Filtra quais os campos que serão processados pelo sistema

      params.require(:coin).permit(:description, :acronym, :url_image)
    end
end
