class Menu < ActiveRecord::Base

	belongs_to :chef
	belongs_to :booking
	has_one :price
	has_many :meals

end
