class Menu < ActiveRecord::Base

	belongs_to :chef
	has_one :price
	has_many :meals
	has_many :bookings

end
