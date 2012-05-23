class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
      t.datetime :data
      t.string :medicamento
      t.string :dosagem
      t.string :frequencia
      t.string :duracao
      t.string :observacao
      t.integer :medico_id
      t.integer :prontuario_id

      t.timestamps
    end
  end
end
