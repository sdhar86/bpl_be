# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  credit     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
