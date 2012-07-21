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
	validates :email, :presence => true,
	                  :uniqueness => true,
	                  :length => { :within => 9..50 },
	                  :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
	validates :password, :confirmation => true
	
	has_one :profile
	has_one :subscription
	has_many :items
	has_many :messages
	has_and_belongs_to_many :budgets
	has_many :reminders, :through => :subscriptions
end
