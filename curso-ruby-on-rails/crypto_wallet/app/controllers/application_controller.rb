# Controller principal do sistema
# Todas as requisições passam por aqui primeiro para poder ir aos próximos controllers

class ApplicationController < ActionController::Base
    # Configurando a internacionalização em tempo de excução
    before_action :set_locale



    private

    # Método para mudar o idioma da página conforme o parâmetro enviado na url
    def set_locale
        if params[:local]
            cookies[:locale] = params[:local]
        end

        if cookies[:locale]
            if I18n.locale != cookies[:locale]
                I18n.locale = cookies[:locale]
            end
        end
    end
end
