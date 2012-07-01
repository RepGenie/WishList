# == Schema Information
# Schema version: 20120701222955
#
# Table name: users
#
#  id         :integer         not null, primary key
#  group_id   :integer
#  name       :string(255)
#  password   :string(255)
#  active     :boolean
#  admin      :boolean
#  email      :string(255)
#  primary    :boolean
#  invited    :datetime
#  last_logon :datetime
#  this_logon :datetime
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
