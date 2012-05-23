class CreateProntuarios < ActiveRecord::Migration
  def change
    create_table :prontuarios do |t|
      t.string :nome
      t.datetime :dataNascimento
      t.string :localizacaoGeo
      t.string :cadastroSaude
      t.string :habitoVida
      t.integer :telefoneResidencial
      t.integer :celular
      t.string :email
      t.integer :genero_id

      t.timestamps
    end
  end
end
