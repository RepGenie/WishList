# == Schema Information
#
# Table name: budgets
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Budget < ActiveRecord::Base
	validates :name, :presence => true
	
	has_many :budgetlines
	has_and_belongs_to_many :users
end
