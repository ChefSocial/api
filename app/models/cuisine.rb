# == Schema Information
#
# Table name: cuisines
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cuisine < ActiveRecord::Base

	has_many :menus, through: :event_cuisine

end
