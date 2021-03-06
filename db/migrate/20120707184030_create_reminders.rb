class CreateReminders < ActiveRecord::Migration
  def self.up
    create_table :reminders do |t|
      t.integer :subscription_id
      t.date :sent_date

      t.timestamps
    end
  end

  def self.down
    drop_table :reminders
  end
end
