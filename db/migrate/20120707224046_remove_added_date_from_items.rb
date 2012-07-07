class RemoveAddedDateFromItems < ActiveRecord::Migration
  def self.up
    remove_column :items, :added_date
  end

  def self.down
    add_column :items, :added_date, :date
  end
end
