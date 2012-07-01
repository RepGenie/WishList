# == Schema Information
# Schema version: 20120701222955
#
# Table name: priorities
#
#  id         :integer         not null, primary key
#  level      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Priority < ActiveRecord::Base
end
