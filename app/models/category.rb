# == Schema Information
# Schema version: 20120707185223
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  category   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
	has_many :formats
end
