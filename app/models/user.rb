# == Schema Information
# Schema version: 20120707185223
#
# Table name: users
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  password   :string(255)
#  admin      :boolean
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	has_one :profile
	has_one :subscription
	has_many :items
	has_many :messages
end
