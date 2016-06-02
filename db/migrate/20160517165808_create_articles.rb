class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :kind
      t.text :description
      t.decimal :sale
      t.integer :stock
      t.string :url
      t.string :string_otro
      t.integer :int_otro

      t.timestamps null: false
    end
  end
end
