# == Schema Information
# Schema version: 20120707185223
#
# Table name: formats
#
#  id          :integer         not null, primary key
#  format      :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Format < ActiveRecord::Base
	belongs_to :category
	
 	default_scope order('formats.format')
end
