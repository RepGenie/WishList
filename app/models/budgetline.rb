class Budgetline < ActiveRecord::Base
	validates :for_user, :presence => true
	
	belongs_to :budget
end
