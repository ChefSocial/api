class Booking < ActiveRecord::Base

	belongs_to :chef
	has_one :menu
	has_many :meals, through: :menu

end
