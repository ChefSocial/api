# == Schema Information
#
# Table name: event_cuisines
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  cuisine_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventCuisine < ActiveRecord::Base

	belongs_to :cuisine
	belongs_to :menu

end
