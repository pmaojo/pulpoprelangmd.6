class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :titulo
      t.text :mensaje
      t.integer :user_id
      t.integer :category_id
      t.references :user, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
