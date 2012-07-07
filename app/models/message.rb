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
	belongs_to :user
end
