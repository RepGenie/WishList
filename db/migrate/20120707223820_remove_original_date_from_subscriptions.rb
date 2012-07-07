class RemoveOriginalDateFromSubscriptions < ActiveRecord::Migration
  def self.up
    remove_column :subscriptions, :original_date
  end

  def self.down
    add_column :subscriptions, :original_date, :date
  end
end
