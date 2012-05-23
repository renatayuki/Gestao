class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.datetime :data
      t.integer :medico_id
      t.integer :prontuario_id
      t.string :nome
      t.string :restricao
      t.string :recomendacao
      t.boolean :deveAnalizar

      t.timestamps
    end
  end
end
