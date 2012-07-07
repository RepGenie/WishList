# == Schema Information
# Schema version: 20120707185223
#
# Table name: priorities
#
#  id         :integer         not null, primary key
#  priority   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Priority < ActiveRecord::Base
end
