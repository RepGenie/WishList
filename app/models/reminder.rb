# == Schema Information
# Schema version: 20120707185223
#
# Table name: reminders
#
#  id              :integer         not null, primary key
#  subscription_id :integer
#  sent_date       :date
#  created_at      :datetime
#  updated_at      :datetime
#

class Reminder < ActiveRecord::Base
	belongs_to :subscription
end
