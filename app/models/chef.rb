class Chef < ActiveRecord::Base

	has_many :menus
	has_many :bookings, through: :menus
	has_one :address, as: :addressable

end
