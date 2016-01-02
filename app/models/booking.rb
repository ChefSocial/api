class Booking < ActiveRecord::Base

	belongs_to :menu
	has_one :address, as: :addressable

end
