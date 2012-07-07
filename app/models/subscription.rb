# == Schema Information
# Schema version: 20120707223820
#
# Table name: subscriptions
#
#  id                :integer         not null, primary key
#  user_id           :integer
#  referred_by       :integer
#  rate              :decimal(, )
#  discount_rate     :decimal(, )
#  discount_ends     :date
#  subscription_ends :date
#  created_at        :datetime
#  updated_at        :datetime
#

class Subscription < ActiveRecord::Base
	belongs_to :user
	has_many :reminders
end
