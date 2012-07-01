# == Schema Information
# Schema version: 20120701222955
#
# Table name: budgets
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  for_id     :integer
#  amount     :decimal(, )
#  created_at :datetime
#  updated_at :datetime
#

class Budget < ActiveRecord::Base
end
