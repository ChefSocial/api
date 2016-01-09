# == Schema Information
#
# Table name: menus
#
#  id           :integer          not null, primary key
#  chef_id      :integer
#  name         :string
#  max_capacity :integer
#  min_capacity :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Menu < ActiveRecord::Base

	belongs_to :chef
	has_many :bookings
	has_many :menu_items
	has_many :cuisines, through: :event_cuisine

end
