# == Schema Information
# Schema version: 20120701222955
#
# Table name: groups
#
#  id                :integer         not null, primary key
#  name              :string(255)
#  active            :boolean
#  referred          :string(255)
#  creation_date     :date
#  paying            :boolean
#  subscription_rate :decimal(, )
#  subscription_ends :date
#  discount_rate     :decimal(, )
#  discount_ends     :date
#  created_at        :datetime
#  updated_at        :datetime
#

class Group < ActiveRecord::Base
end
