# == Schema Information
# Schema version: 20120707224046
#
# Table name: messages
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  for_user    :integer
#  message    :text
#  active     :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Message < ActiveRecord::Base
	validates :user_id, :presence => true
	validates :for_user, :presence => true
	validates :message, :presence => true
	
	belongs_to :user
	
	def recipient_email
		User.find(for_user).email
	end
end
