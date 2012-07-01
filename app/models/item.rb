# == Schema Information
# Schema version: 20120701222955
#
# Table name: items
#
#  id           :integer         not null, primary key
#  requested_by :integer
#  category_id  :integer
#  priority_id  :integer
#  name         :string(255)
#  creator      :string(255)
#  note         :text
#  added_date   :date
#  active       :boolean
#  buyer        :integer
#  buy_date     :date
#  cost         :decimal(, )
#  cart         :integer
#  cart_date    :date
#  url          :text
#  format_id    :integer
#  nonlist      :boolean
#  created_at   :datetime
#  updated_at   :datetime
#

class Item < ActiveRecord::Base
end
