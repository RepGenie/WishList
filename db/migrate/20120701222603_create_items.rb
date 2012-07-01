class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :id
      t.integer :requested_by
      t.integer :category_id
      t.integer :priority_id
      t.string :name
      t.string :creator
      t.text :note
      t.date :added_date
      t.boolean :active
      t.integer :buyer
      t.date :buy_date
      t.decimal :cost
      t.integer :cart
      t.date :cart_date
      t.text :url
      t.integer :format_id
      t.boolean :nonlist

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
