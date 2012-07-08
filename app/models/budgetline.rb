# == Schema Information
#
# Table name: budgetlines
#
#  id             :integer         not null, primary key
#  budget_id      :integer
#  for_user       :integer
#  budget_amount  :decimal(, )
#  actual_amount  :decimal(, )
#  created_at     :datetime
#  updated_at     :datetime
#

class Budgetline < ActiveRecord::Base
	validates :for_user, :presence => true
	
	belongs_to :budget
end
