# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  menu_id    :string
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ActiveRecord::Base

	belongs_to :menu
	belongs_to :user

end
