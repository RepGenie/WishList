class CreateBudgetsUsers < ActiveRecord::Migration
  def self.up
  	create_table :budgets_users, :id => false do |t|
  		t.references :budget
  		t.references :user
  	end
  end

  def self.down
  	drop_table :budgets_users
  end
end
