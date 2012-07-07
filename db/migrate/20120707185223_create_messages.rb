class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :user_id
      t.integer :to_user
      t.text :message
      t.date :create_date
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
