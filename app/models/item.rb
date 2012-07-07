# == Schema Information
# Schema version: 20120707185223
#
# Table name: items
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  priority_id :integer
#  category_id :integer
#  format_id   :integer
#  item        :string(255)
#  artist      :string(255)
#  note        :string(255)
#  added_date  :date
#  active      :boolean
#  buyer       :integer
#  buy_date    :date
#  cost        :decimal(, )
#  cart        :integer
#  cart_date   :date
#  url         :text
#  nonlist     :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
	validates :item, :presence => true
	validates :user_id, :presence => true
	validates :priority_id, :presence => true
	validates :category_id, :presence => true
	
	belongs_to :user
end
