class CreateRecipelists < ActiveRecord::Migration
  def change
    create_table :recipelists do |t|
      t.string :name
      t.integer :price
      t.text :ingredients

      t.timestamps null: false
    end
  end
end
