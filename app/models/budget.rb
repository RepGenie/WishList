class Budget < ActiveRecord::Base
	validates :name, :presence => true
	
	has_many :budgetlines
	has_and_belongs_to_many :users
end
