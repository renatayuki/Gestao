class CreateDiagnosticos < ActiveRecord::Migration
  def change
    create_table :diagnosticos do |t|
      t.string :descricao
      t.datetime :data
      t.integer :medico_id
      t.integer :prontuario_id

      t.timestamps
    end
  end
end
