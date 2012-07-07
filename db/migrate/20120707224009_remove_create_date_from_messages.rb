class RemoveCreateDateFromMessages < ActiveRecord::Migration
  def self.up
    remove_column :messages, :create_date
  end

  def self.down
    add_column :messages, :create_date, :date
  end
end
