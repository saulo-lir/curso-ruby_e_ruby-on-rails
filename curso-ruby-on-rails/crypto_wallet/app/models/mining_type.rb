class MiningType < ApplicationRecord
    has_many :coins

=begin
    
    has_many = tem muitos (É o inverso do belongs_to. Relaciona 1 para muitos)
    coins = Representa o model Coin, porém deve ser escrito no plural pois trata-se
    de um relacionamento de 1 para muitos

    O has_many to associa o model MiningType ao Coin, identificando 
    todos os registros que possuem um mining_type_id específico

=end
end
