class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.integer :group_id
      t.string :name
      t.string :password
      t.boolean :active
      t.boolean :admin
      t.string :email
      t.boolean :primary
      t.datetime :invited
      t.datetime :last_logon
      t.datetime :this_logon

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
