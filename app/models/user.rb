# == Schema Information
# Schema version: 20120707185223
#
# Table name: users
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  hashed_password   :string(255)
#  admin      :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'digest'
class User < ActiveRecord::Base
	attr_accessor :password
	
	validates :email, :presence => true,
	                  :uniqueness => true,
	                  :length => { :within => 9..50 },
	                  :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
	validates :password, :confirmation => true,
						 :length => { :within => 4..20 },
						 :presence => true,
						 :if => :password_required?
	
	has_one :profile
	has_one :subscription
	has_many :items
	has_many :messages
	has_and_belongs_to_many :budgets
	has_many :reminders, :through => :subscriptions
	
	before_save :encrypt_new_password
	
	def self.authenticate(email, password)
		user = find_by_email(email)
		return user if user && user.authenticated?(password)
	end
	
	def authenticated?(password)
		self.hashed_password == encrypt(password)
	end
	
	protected
		def encrypt_new_password
			return if password.blank?
			self.hashed_password = encrypt(password)
		end
		
		def password_required?
			hashed_password.blank? || password.present?
		end
		
		def encrypt(string)
			Digest::SHA1.hexdigest(string)
		end
end
