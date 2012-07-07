# == Schema Information
# Schema version: 20120707185223
#
# Table name: profiles
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Profile < ActiveRecord::Base
	validates :user_id, :presence => true
	
	belongs_to :user
	
	def full_name
		"#{first_name} #{last_name}"
	end
end
