class CreateActualizacions < ActiveRecord::Migration
  def change
    create_table :actualizacions do |t|
      t.references :user, index: true
      t.decimal :peso
      t.decimal :dieta
      t.decimal :cardio
      t.decimal :talla
      t.decimal :muscular
      t.integer :user_id

      t.timestamps
    end
  end
end
