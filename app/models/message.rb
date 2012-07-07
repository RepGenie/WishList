# == Schema Information
# Schema version: 20120707185223
#
# Table name: messages
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  to_user     :integer
#  message     :text
#  create_date :date
#  active      :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Message < ActiveRecord::Base
	validates :user_id, :presence => true
	validates :to_user, :presence => true
	validates :message, :presence => true
	
	belongs_to :user
end
