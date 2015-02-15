class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.decimal :peso_inicial
      t.decimal :altura
      t.decimal :idm
      t.decimal :peso_ideal
      t.decimal :peso_objetivo
      t.decimal :talla_inicial
      t.decimal :talla_objetivo
      t.decimal :ejercicio
      t.references :user, index: true

      t.timestamps
    end
  end
end
