class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer :id
      t.string :name
      t.boolean :active
      t.string :referred
      t.date :creation_date
      t.boolean :paying
      t.decimal :subscription_rate
      t.date :subscription_ends
      t.decimal :discount_rate
      t.date :discount_ends

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
