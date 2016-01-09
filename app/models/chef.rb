# == Schema Information
#
# Table name: chefs
#
#  id         :integer          not null, primary key
#  address    :string
#  name       :string
#  email      :string
#  rating     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Chef < ActiveRecord::Base

	has_many :menus
	has_many :bookings, through: :menus

end
