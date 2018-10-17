module ApplicationHelper

    # Aqui nós definimos todos os métodos que serão utilizados como helpers
    # Todos os helpers definidos nessa classe vão funcionar em toda a aplicação

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def nome_aplicacao
        "CRYPTO_WALLET APP"
    end
end
