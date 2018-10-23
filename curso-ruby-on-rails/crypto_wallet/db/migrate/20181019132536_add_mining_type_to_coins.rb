# migration standalone
# Tem o objetivo de adicionar o campo mining_type da tabela mining_types à
# tabela coins, adicionando também o relacionamento entre elas

class AddMiningTypeToCoins < ActiveRecord::Migration[5.2]
  def change
    add_reference :coins, :mining_type, foreign_key: true
  end
end
