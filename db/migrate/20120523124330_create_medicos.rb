class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :login
      t.string :senha
      t.string :nome
      t.date :dataNascimento
      t.integer :rg
      t.integer :localizacaoGeo
      t.integer :cpf
      t.integer :crm
      t.integer :telefoneResidencial
      t.integer :celular
      t.integer :especialidade_id
      t.boolean :admin

      t.timestamps
    end
  end
end
