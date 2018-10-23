class Coin < ApplicationRecord
    belongs_to :mining_type

=begin
    belongs_to = pertence a (relacionamento 1 para 1)
    mining_type = representa o model MiningType

    O belongs to associa o model Coin ao MiningType, identificando 
    o campo mining_type_id como sendo chave estrangeira

    has_many = tem muitos (É o inverso do belongs_to)

=end

end
