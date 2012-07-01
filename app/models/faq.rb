# == Schema Information
# Schema version: 20120701222955
#
# Table name: faqs
#
#  id         :integer         not null, primary key
#  question   :string(255)
#  answer     :text
#  created_at :datetime
#  updated_at :datetime
#

class Faq < ActiveRecord::Base
end
