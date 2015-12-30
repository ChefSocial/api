class Chef < ActiveRecord::Base

	has_many :menus
	has_many :bookings
	has_one :address, as: :addressable

end
