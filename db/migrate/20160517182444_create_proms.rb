class CreateProms < ActiveRecord::Migration
  def change
    create_table :proms do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.text :description
      t.integer :stock
      t.integer :prod_1
      t.integer :prod_2
      t.integer :prod_3
      t.integer :prod_4
      t.integer :cant_1
      t.integer :cant_2
      t.integer :cant_3
      t.integer :cant_4
      t.date :date_start
      t.date :date_end
      t.integer :valido
      t.string :url
      t.string :string_otro
      t.integer :int_otro

      t.timestamps null: false
    end
  end
end
