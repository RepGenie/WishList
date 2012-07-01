class CreateBudgets < ActiveRecord::Migration
  def self.up
    create_table :budgets do |t|
      t.integer :id
      t.integer :user_id
      t.integer :for_id
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :budgets
  end
end
