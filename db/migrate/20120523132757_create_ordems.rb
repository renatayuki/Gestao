class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.string :nome

      t.timestamps
    end
  end
end
