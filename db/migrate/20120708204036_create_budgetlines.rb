class CreateBudgetlines < ActiveRecord::Migration
  def self.up
    create_table :budgetlines do |t|
      t.integer :budget_id
      t.integer :for_user
      t.decimal :budget_amount
      t.decimal :actual_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :budgetlines
  end
end
