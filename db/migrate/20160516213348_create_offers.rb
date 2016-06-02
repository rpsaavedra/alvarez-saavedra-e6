class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.decimal :price
      t.integer :product_1_id
      t.integer :product_2_id
      t.integer :product_3_id
      t.integer :product_4_id
      t.integer :lot_1
      t.integer :lot_2
      t.integer :lot_3
      t.integer :lot_4
      t.string :image
      t.date :date_start
      t.date :date_end
      t.integer :validation
      t.string :string_otro
      t.integer :int_otro

      t.timestamps null: false
    end
  end
end
