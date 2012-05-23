class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.integer :prontuario_id
      t.string :resultado
      t.string :nome
      t.datetime :dataRealizacao
      t.datetime :dataPronto
      t.string :status

      t.timestamps
    end
  end
end
