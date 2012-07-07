class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :referred_by
      t.date :original_date
      t.decimal :rate
      t.decimal :discount_rate
      t.date :discount_ends
      t.date :subscription_ends

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
