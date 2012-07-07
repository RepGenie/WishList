class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :user_id
      t.integer :priority_id
      t.integer :category_id
      t.integer :format_id
      t.string :item
      t.string :artist
      t.string :note
      t.date :added_date
      t.boolean :active
      t.integer :buyer
      t.date :buy_date
      t.decimal :cost
      t.integer :cart
      t.date :cart_date
      t.text :url
      t.boolean :nonlist

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
